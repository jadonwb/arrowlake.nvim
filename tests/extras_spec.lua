local Colors = require("arrowlake.colors")
local Sublime = require("arrowlake.extra.sublime")
local Yazi = require("arrowlake.extra.yazi")

---@param style string
---@return ColorScheme
local function colors_for(style)
  local colors = Colors.setup({ style = style })
  colors._style = style
  return colors
end

--- Collect every six-digit hex color nested anywhere in a table.
---@param t table
---@param out table<string, boolean>
---@return table<string, boolean>
local function collect_hex(t, out)
  out = out or {}
  for _, v in pairs(t) do
    if type(v) == "string" then
      local h = v:match("^(#%x%x%x%x%x%x)$")
      if h then out[h:lower()] = true end
    elseif type(v) == "table" then
      collect_hex(v, out)
    end
  end
  return out
end

--- Extract every six-digit hex color appearing in a string.
---@param text string
---@return table<string, boolean>
local function hex_in(text)
  local out = {}
  for h in text:gmatch("#%x%x%x%x%x%x") do
    out[h:lower()] = true
  end
  return out
end

--- Return the body of a `[name]` TOML section, or nil if absent.
---@param text string
---@param name string
---@return string?
local function section(text, name)
  local _, finish = text:find("%[" .. name .. "%]")
  if not finish then return nil end
  local rest = text:sub(finish + 1)
  local stop = rest:find("\n%[")
  if stop then rest = rest:sub(1, stop - 1) end
  return rest
end

describe("extra: sublime", function()
  for _, style in ipairs({ "dark", "light" }) do
    describe(style, function()
      it("emits a well-formed plist with style-specific metadata", function()
        local tm = Sublime.generate(colors_for(style))
        assert.is_true(tm:find('<?xml version="1.0"', 1, true) ~= nil)
        assert.is_true(tm:find("<!DOCTYPE plist", 1, true) ~= nil)
        assert.is_true(tm:find("<plist version=", 1, true) ~= nil)
        assert.is_true(tm:find("<key>settings</key>", 1, true) ~= nil)
        assert.is_true(tm:find("<key>scope</key>", 1, true) ~= nil)
        assert.is_true(tm:find("<key>name</key>", 1, true) ~= nil)
        local name = style == "light" and "Arrowlake Light" or "Arrowlake Dark"
        assert.is_true(tm:find(name, 1, true) ~= nil)
      end)

      it("contains no unresolved template expressions", function()
        assert.is_nil(Sublime.generate(colors_for(style)):match("%${"))
      end)

      it("derives every emitted color from the palette", function()
        local colors = colors_for(style)
        local tm = Sublime.generate(colors)
        local palette = collect_hex(colors)
        for h in pairs(hex_in(tm)) do
          assert.is_true(palette[h], "unmapped color " .. h)
        end
      end)
    end)
  end
end)

describe("extra: yazi", function()
  for _, style in ipairs({ "dark", "light" }) do
    describe(style, function()
      local colors = colors_for(style)
      local toml, artifacts = Yazi.generate(colors)
      local flavor_dir = "arrowlake-" .. style .. ".yazi"

      it("returns the expected flavor artifact paths", function()
        assert.is_not_nil(artifacts)
        local paths = {}
        for _, a in ipairs(artifacts) do
          paths[a.path] = a.content
        end
        assert.is_string(paths[flavor_dir .. "/flavor.toml"])
        assert.is_string(paths[flavor_dir .. "/tmtheme.xml"])
      end)

      it("contains no unresolved template expressions", function()
        assert.is_nil(toml:match("%${"))
      end)

      it("flavor.toml equals the standalone theme", function()
        local flavor = nil
        for _, a in ipairs(artifacts) do
          if a.path == flavor_dir .. "/flavor.toml" then flavor = a.content end
        end
        assert.same(toml, flavor)
      end)

      it("flavor tmtheme.xml equals the sublime generator", function()
        local tm = nil
        for _, a in ipairs(artifacts) do
          if a.path == flavor_dir .. "/tmtheme.xml" then tm = a.content end
        end
        assert.same(Sublime.generate(colors), tm)
      end)

      it("uses current sections and fields", function()
        for _, name in ipairs({
          "app", "mgr", "tabs", "mode", "indicator", "status", "which", "confirm", "spot", "notify",
          "pick", "input", "cmp", "tasks", "help", "filetype",
        }) do
          assert.is_not_nil(section(toml, name), "missing section [" .. name .. "]")
        end
        assert.is_true(toml:find("syntect_theme%s*=%s*\"\"") ~= nil)
        assert.is_not_nil(section(toml, "confirm"):find("body"))
        assert.is_not_nil(section(toml, "help"):find("chord"))
        assert.is_not_nil(section(toml, "help"):find("action"))
        assert.is_not_nil(section(toml, "help"):find("hovered"))
        assert.is_not_nil(section(toml, "filetype"):find("url%s*="))
      end)

      it("drops obsolete keys and selectors", function()
        assert.is_nil(section(toml, "mgr"):find("hovered"))
        assert.is_nil(toml:find("preview_hovered"))
        assert.is_nil(section(toml, "confirm"):find("content"))
        assert.is_nil(section(toml, "help"):find("\n%s*on%s*="))
        assert.is_nil(section(toml, "help"):find("\n%s*run%s*="))
        assert.is_nil(section(toml, "help"):find("\n%s*desc%s*="))
        assert.is_nil(section(toml, "help"):find("\n%s*footer%s*="))
        assert.is_nil(section(toml, "filetype"):find("name%s*="))
      end)
    end)
  end
end)
