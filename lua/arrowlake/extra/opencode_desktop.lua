-- OpenCode Desktop theme generator.
--
-- Desktop themes are contributed by a GUI plugin (`ctx.add(Theme, theme)`),
-- not read from a theme directory. The plugin bundle is CommonJS, so this
-- module emits one self-contained gui-experimental.cjs containing both the
-- light and dark Arrowlake variants.

local M = {}

---@param value any
---@param indent number
---@return string
local function encode(value, indent)
  local pad = string.rep("  ", indent)
  local next_pad = string.rep("  ", indent + 1)

  if type(value) == "string" then
    return vim.json.encode(value)
  end

  if type(value) == "number" or type(value) == "boolean" then
    return tostring(value)
  end

  if type(value) ~= "table" then
    error("unsupported JSON value: " .. type(value))
  end

  if value.__object then
    local parts = {}
    for _, pair in ipairs(value.__object) do
      parts[#parts + 1] = ("%s%s: %s"):format(next_pad, vim.json.encode(pair[1]), encode(pair[2], indent + 1))
    end
    return "{\n" .. table.concat(parts, ",\n") .. "\n" .. pad .. "}"
  end

  local parts = {}
  for _, item in ipairs(value) do
    parts[#parts + 1] = next_pad .. encode(item, indent + 1)
  end
  return "[\n" .. table.concat(parts, ",\n") .. "\n" .. pad .. "]"
end

---@param entries [string, any][]
local function object(entries)
  return { __object = entries }
end

---@param c ColorScheme
local function palette(c)
  return object({
    { "neutral", c.bg },
    { "ink", c.fg },
    { "primary", c.primary },
    { "interactive", c.focus },
    { "success", c.diagnostics.success },
    { "warning", c.diagnostics.warning },
    { "error", c.diagnostics.error },
    { "info", c.diagnostics.info },
    { "diffAdd", c.git.add },
    { "diffDelete", c.git.delete },
  })
end

---@param c ColorScheme
local function overrides(c)
  return object({
    { "text-strong", c.fg },
    { "text-base", c.fg },
    { "text-weak", c.fg_dark },
    { "text-weaker", c.fg_darker },
    { "syntax-comment", c.foregrounds.comment },
    { "syntax-keyword", c.syntax.keyword },
    { "syntax-function", c.syntax.functions },
    { "syntax-variable", c.syntax.variable },
    { "syntax-string", c.syntax.string },
    { "syntax-number", c.syntax.constant },
    { "syntax-type", c.syntax.type },
    { "syntax-operator", c.syntax.operator },
    { "syntax-punctuation", c.foregrounds.punctuation },
    { "syntax-primitive", c.syntax.type_builtin },
    { "syntax-property", c.foregrounds.member },
    { "syntax-constant", c.syntax.constant },
    { "syntax-critical", c.diagnostics.error },
    { "syntax-diff-add", c.git.add },
    { "syntax-diff-delete", c.git.delete },
    { "syntax-diff-unknown", c.ui.attention },
  })
end

---@param dark ColorScheme
---@param light ColorScheme
---@return table
function M.theme(dark, light)
  return object({
    { "$schema", "https://opencode.ai/desktop-theme.json" },
    { "name", "Arrowlake" },
    { "id", "arrowlake" },
    { "light", object({
      { "palette", palette(light) },
      { "overrides", overrides(light) },
    }) },
    { "dark", object({
      { "palette", palette(dark) },
      { "overrides", overrides(dark) },
    }) },
  })
end

---@param dark ColorScheme
---@param light ColorScheme
---@return string
function M.plugin(dark, light)
  return ([[
const { Plugin, Theme } = require("@opencode/plugin/gui")

const theme = %s

const plugin = Plugin.define({
  setup(ctx) {
    ctx.add(Theme, theme)
  },
})

module.exports = plugin
module.exports.default = plugin
]]):format(encode(M.theme(dark, light), 0))
end

return M
