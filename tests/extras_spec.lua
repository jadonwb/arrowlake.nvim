local Colors = require("arrowlake.colors")
local Opencode = require("arrowlake.extra.opencode")
local Sublime = require("arrowlake.extra.sublime")
local Yazi = require("arrowlake.extra.yazi")
local Codex = require("arrowlake.extra.codex")
local Omarchy = require("arrowlake.extra.omarchy")
local OpenCodeDesktop = require("arrowlake.extra.opencode_desktop")
local Wezterm = require("arrowlake.extra.wezterm")

---@param style string
---@return ColorScheme
local function colors_for(style)
  local colors = Colors.setup(style)
  colors._style = style
  return colors
end



describe("extra: opencode desktop", function()
  local dark = colors_for("dark")
  local light = colors_for("light")
  local text = OpenCodeDesktop.plugin(dark, light)
  local json = text:match("const theme = (.-)\n\nconst plugin")
  local doc = vim.json.decode(json)

  it("bundles a GUI plugin that contributes the theme", function()
    assert.is_true(text:find('require("@opencode/plugin/gui")', 1, true) ~= nil)
    assert.is_true(text:find("ctx.add(Theme, theme)", 1, true) ~= nil)
    assert.is_true(text:find("module.exports = plugin", 1, true) ~= nil)
  end)

  it("uses the desktop theme schema and identity", function()
    assert.are.equal("https://opencode.ai/desktop-theme.json", doc["$schema"])
    assert.are.equal("Arrowlake", doc.name)
    assert.are.equal("arrowlake", doc.id)
  end)

  it("maps both Arrowlake palettes", function()
    assert.are.equal(light.bg, doc.light.palette.neutral)
    assert.are.equal(light.fg, doc.light.palette.ink)
    assert.are.equal(light.primary, doc.light.palette.primary)
    assert.are.equal(light.focus, doc.light.palette.interactive)
    assert.are.equal(light.diagnostics.info, doc.light.palette.info)
    assert.are.equal(dark.bg, doc.dark.palette.neutral)
    assert.are.equal(dark.fg, doc.dark.palette.ink)
    assert.are.equal(dark.diagnostics.warning, doc.dark.palette.warning)
    assert.are.equal(dark.git.add, doc.dark.palette.diffAdd)
    assert.are.equal(dark.git.delete, doc.dark.palette.diffDelete)
  end)

  it("pins the Arrowlake syntax colors", function()
    assert.are.equal(light.syntax.keyword, doc.light.overrides["syntax-keyword"])
    assert.are.equal(dark.syntax.functions, doc.dark.overrides["syntax-function"])
    assert.are.equal(dark.foregrounds.comment, doc.dark.overrides["syntax-comment"])
    assert.are.equal(dark.diagnostics.error, doc.dark.overrides["syntax-critical"])
  end)
end)

describe("extra: omarchy", function()
  for _, style in ipairs({ "dark", "light" }) do
    it("emits the semantic colors.toml for " .. style, function()
      local colors = colors_for(style)
      local toml = Omarchy.colors_toml(colors)

      assert.is_true(toml:find('mode = "' .. style .. '"', 1, true) ~= nil)
      assert.is_nil(toml:match("color%d+"))
      for _, key in ipairs({
        "accent", "selection", "muted",
        "background", "dark_background", "darker_background", "lighter_background",
        "foreground", "dark_foreground", "light_foreground", "bright_foreground",
        "red", "yellow", "orange", "green", "cyan", "blue", "magenta",
        "bright_red", "bright_yellow", "bright_green", "bright_cyan", "bright_blue", "bright_magenta",
      }) do
        assert.is_not_nil(toml:find("\n" .. key .. " = ", 1, true), key)
      end
    end)

    it("emits a per-theme neovim spec for " .. style, function()
      local spec = Omarchy.neovim(style)
      assert.is_true(spec:find('colorscheme = "arrowlake-' .. style .. '"', 1, true) ~= nil)
      assert.is_true(spec:find("jadonwb/arrowlake.nvim", 1, true) ~= nil)
    end)
  end
end)

describe("extra: wezterm", function()
  for _, style in ipairs({ "dark", "light" }) do
    it("emits the JSON shape WezTerm reads for " .. style, function()
      local colors = colors_for(style)
      local doc = vim.json.decode(Wezterm.generate(colors))
      assert.are.equal(colors.fg, doc.foreground)
      assert.are.equal(colors.bg, doc.background)
      assert.are.equal(#doc.ansi, 8)
      assert.are.equal(#doc.brights, 8)
      assert.are.equal(colors.terminal.white_bright, doc.brights[8])
      assert.is_not_nil(doc.tab_bar.active_tab)
      assert.is_not_nil(doc.copy_mode_inactive_highlight_bg.Color)
    end)
  end

  it("uses a magenta tint for the light selection", function()
    local colors = colors_for("light")
    local doc = vim.json.decode(Wezterm.generate(colors))
    assert.are.equal("#d7a9b1", doc.selection_bg:lower())
  end)

  it("uses the normal selection for dark", function()
    local colors = colors_for("dark")
    local doc = vim.json.decode(Wezterm.generate(colors))
    assert.are.equal(colors.backgrounds.visual, doc.selection_bg)
  end)
end)

describe("extra: codex", function()
  for _, style in ipairs({ "dark", "light" }) do
    it("emits a palette-derived v1 share string for " .. style, function()
      local colors = colors_for(style)
      local text = Codex.generate(colors)
      assert.are.equal("codex-theme-v1:", text:sub(1, 15))
      local doc = vim.json.decode(text:sub(16))
      assert.are.equal(style, doc.variant)
      assert.are.equal("codex", doc.codeThemeId)
      assert.are.equal(colors.primary, doc.theme.accent)
      assert.are.equal("custom", doc.theme.accentSource)
      assert.are.equal(colors.foregrounds.normal, doc.theme.ink)
      assert.are.equal(colors.backgrounds.normal, doc.theme.surface)
      assert.are.equal(colors.git.add, doc.theme.semanticColors.diffAdded)
      assert.are.equal(colors.git.delete, doc.theme.semanticColors.diffRemoved)
      assert.are.equal(colors.secondary, doc.theme.semanticColors.skill)
      assert.is_true(doc.theme.opaqueWindows)
      assert.are.equal(style == "dark" and 60 or 45, doc.theme.contrast)
      assert.are.equal(vim.NIL, doc.theme.fonts.code)
      assert.are.equal(vim.NIL, doc.theme.fonts.ui)
      assert.are.equal(text, Codex.generate(colors))
    end)
  end

  it("follows palette overrides", function()
    local colors = colors_for("dark")
    colors.primary = "#123456"
    colors.backgrounds.normal = "#102030"
    local doc = vim.json.decode(Codex.generate(colors):sub(16))
    assert.are.equal("#123456", doc.theme.accent)
    assert.are.equal("#102030", doc.theme.surface)
  end)

  it("rejects unknown variants", function()
    local colors = colors_for("dark")
    colors._style = "unknown"
    assert.has_error(function() Codex.generate(colors) end)
  end)
end)

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
      local primary, artifacts = Yazi.generate(colors)
      local flavor_dir = "arrowlake-" .. style .. ".yazi"
      local toml
      for _, a in ipairs(artifacts) do
        if a.path == flavor_dir .. "/flavor.toml" then toml = a.content end
      end

      it("returns the expected flavor artifact paths", function()
        assert.is_nil(primary)
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
