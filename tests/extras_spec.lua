local Colors = require("arrowlake.colors")
local Opencode = require("arrowlake.extra.opencode")
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


describe("extra: opencode", function()
  local legacy_keys = { "default", "subdued", "@context:elevated", "@context:overlay", "version", "standalone" }
  local steps = { "100", "200", "300", "400", "500", "600", "700", "800", "900" }

  --- Relative sRGB luminance of a `#rrggbb` string.
  ---@param value string
  ---@return number
  local function luminance(value)
    return 0.299 * tonumber(value:sub(2, 3), 16) / 255
      + 0.587 * tonumber(value:sub(4, 5), 16) / 255
      + 0.114 * tonumber(value:sub(6, 7), 16) / 255
  end

  --- Visit every string appearing as a value or an entry key in a decoded document.
  ---@param node any
  ---@param visit fun(value: string)
  local function walk(node, visit)
    if type(node) ~= "table" then return end
    for _, value in pairs(node) do
      if type(value) == "string" then
        visit(value)
      else
        walk(value, visit)
      end
    end
  end

  --- Resolve a theme reference to a hex string, following hue aliases.
  --- Understands `$hue.<name>.<step>`, `$hue.<name>`, `$text.<path>` and `$background.<path>`.
  ---@param doc table
  ---@param mode string
  ---@param value string
  ---@return string|table
  local function resolve(doc, mode, value)
    local seen = {}

    local function step(token)
      assert.is_string(token, "reference value must be a string")
      if token == "transparent" or token:sub(1, 1) == "#" then
        return token
      end
      assert.is_nil(seen[token], "circular reference: " .. token)
      seen[token] = true

      local parts = vim.split(token, ".", { plain = true })
      local head = table.remove(parts, 1)

      if head == "$hue" then
        local name = table.remove(parts, 1)
        local scale = doc[mode].hue[name]
        assert.is_not_nil(scale, "undefined hue: " .. tostring(name))
        local suffix = table.concat(parts, ".")
        if type(scale) == "string" then
          return step(suffix == "" and scale or (scale .. "." .. suffix))
        end
        if suffix == "" then return scale end
        assert.is_not_nil(scale[suffix], "undefined step " .. suffix .. " for hue " .. name)
        return scale[suffix]
      end

      local node = doc.base[head:sub(2)]
      assert.is_not_nil(node, "undefined token: " .. head)
      for index, part in ipairs(parts) do
        node = node[part]
        assert.is_not_nil(node, "undefined reference: " .. token)
        if type(node) == "string" then
          return step(index < #parts and (node .. "." .. table.concat(parts, ".", index + 1)) or node)
        end
      end
      return node
    end

    return step(value)
  end

  for _, style in ipairs({ "dark", "light" }) do
    describe(style, function()
      local doc = vim.json.decode(Opencode.generate(colors_for(style)))

      it("uses the current v2 document shape", function()
        assert.is_not_nil(doc["$schema"])
        assert.is_not_nil(doc.base)
        assert.is_nil(doc.version)
        assert.is_nil(doc.standalone)
        assert.is_not_nil(doc[style], "mode key " .. style .. " is missing")
        assert.is_not_nil(doc[style].hue)
        assert.is_nil(doc.base.hue, "hue belongs to the mode definition")
        assert.is_not_nil(doc.base.categorical, "categorical belongs to base")
        for _, key in ipairs(vim.tbl_keys(doc)) do
          assert.is_true(
            key == "$schema" or key == "base" or key == style,
            "unexpected top level key: " .. key
          )
        end
        local other = style == "light" and "dark" or "light"
        assert.is_nil(doc[other], "unexpected mode key: " .. other)
      end)

      it("drops legacy v1 keys", function()
        for _, legacy in ipairs(legacy_keys) do
          assert.is_false(vim.tbl_contains(vim.tbl_keys(doc.base), legacy), "legacy key in base: " .. legacy)
        end
        for _, name in ipairs({ "default", "subdued", "@context:elevated", "@context:overlay" }) do
          assert.is_nil(doc.base[name], "legacy key still emitted: " .. name)
        end
        walk(doc, function(value)
          assert.are_not.equal("$text.default", value)
          assert.are_not.equal("$text.subdued", value)
          assert.are_not.equal("$background.default", value)
        end)
      end)

      it("resolves every reference", function()
        walk(doc, function(value)
          if value:match("^%$%a+%.") then
            assert.is_not_nil(resolve(doc, style, value), "unresolved reference: " .. value)
          end
        end)
      end)

      -- V2 orders hue steps by the mode's contrast direction: light themes run
      -- from the darkest 100 to the lightest 900, dark themes the other way.
      -- Arrowlake's neutral anchors are not strictly monotonic (the dark page
      -- background is lighter than the dark raised surface), so compare the
      -- low half against the high half instead of neighbouring steps.
      it("orders hue steps by the mode contrast direction", function()
        local function average(scale, from, to)
          local total = 0
          for index = from, to do
            total = total + luminance(scale[steps[index]])
          end
          return total / (to - from + 1)
        end

        for name, scale in pairs(doc[style].hue) do
          if type(scale) == "table" then
            local low = average(scale, 1, 4)
            local high = average(scale, 6, 9)
            local first, last = luminance(scale["100"]), luminance(scale["900"])
            if style == "light" then
              assert.is_true(high > low, name .. ": light mode must brighten toward step 900")
              assert.is_true(last > first, name .. ": step 900 must be lighter than step 100")
            else
              assert.is_true(high < low, name .. ": dark mode must darken toward step 900")
              assert.is_true(last < first, name .. ": step 900 must be darker than step 100")
            end
          end
        end
      end)

      it("keeps agent colors on the authored palette hue", function()
        -- The planner is the secondary hue of the palette: blue for the light
        -- scheme, purple for the dark one.
        local planner = style == "light" and "blue" or "purple"
        assert.are.same(planner, doc.base.categorical[1], "planner hue changed")
        for _, name in ipairs(doc.base.categorical) do
          assert.is_not_nil(doc[style].hue[name], "categorical hue is undefined: " .. name)
        end
        assert.is_string(resolve(doc, style, "$hue." .. doc.base.categorical[1] .. ".200"))
      end)

      it("highlights only the active row", function()
        local action = doc.base.background.action.primary
        assert.are_not.equal("transparent", action["$focused"])
        assert.are.equal("transparent", action["$selected"])
        assert.is_not_nil(resolve(doc, style, action["$focused"]))
      end)

      it("keeps feedback text distinct from the page background", function()
        local background = resolve(doc, style, doc.base.background.base)
        for _, name in ipairs({ "error", "warning", "success", "info" }) do
          assert.are_not.equal(
            resolve(doc, style, doc.base.text.feedback[name].base),
            background,
            name .. " text must differ from the page background"
          )
        end
      end)

      it("separates the page from the raised surfaces", function()
        local page = resolve(doc, style, doc.base.background.base)
        local raised = resolve(doc, style, doc.base.background.raised.base)
        assert.are_not.equal(page, raised, "raised surface must lift off the page")
        assert.are_not.equal(raised, resolve(doc, style, doc.base.border.base), "border must differ from raised")
      end)

      it("matches the `/` command menu surface to the prompt input", function()
        -- The prompt paints `decrease(background.raised.base)` and popup menus
        -- (the `/` command list) paint `background.raised.high`, so the two must
        -- resolve to the same color.
        local raised = doc.base.background.raised
        assert.are.equal(
          resolve(doc, style, raised.base),
          resolve(doc, style, raised.high),
          "the command menu must share the prompt background"
        )
        -- Dialog surfaces keep a distinct hover shade so hovers stay visible.
        local dialog = doc.base["@dialog"].background.raised
        assert.are_not.equal(
          resolve(doc, style, dialog.base),
          resolve(doc, style, dialog.high),
          "dialog hovers need a distinct shade"
        )
      end)
    end)
  end
end)
