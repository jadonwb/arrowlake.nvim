
local M = {}

-- Backgrounds
M.bg = "#0D0C25"
M.bg_dark = "#09081a"
M.bg_darker = "#070614"

-- Foregrounds
M.fg = "#bec8e8"
M.fg_dark = "#7e85b8"
M.fg_darker = "#5c6296"
M.fg_gutter = "#312e55"

-- Core colors
M.red = "#E50050"
M.orange = "#FB9B00"
M.yellow = "#FFD888"
M.green = "#2A8A6B"
M.blue = "#3F3BF5"
M.purple = "#834CCF"
M.magenta = "#D91C87"
M.cyan = "#33D4B4"

-- Accent choices
M.primary = M.blue
M.secondary = "#5352CD"
M.selection = "#161440"
M.focus = M.orange
M.operator = "#9AC1E5"

---@param c arrowlake.Palette
function M.map(c)
  local U = require("arrowlake.util")

  require("arrowlake.colors.mappings").apply(c)

  -- Dark-specific overrides
  c.string_doc = c.yellow
  c.md_inline = c.yellow
  c.parameter = c.yellow
  c.constant = c.orange
  c.markup = c.orange
  c.link = c.cyan
  c.warning = c.orange
  c.info = c.secondary
  c.todo = c.secondary
  c.ai = c.cyan

  c.bg_hover = c.fg_gutter
  c.bg_search = c.fg_gutter
  c.bg_search_current = c.magenta

  c.type_builtin = U.blend_bg(c.secondary, 0.75, c.bg)
  c.functions_builtin = U.blend_bg(c.primary, 0.75, c.bg)

  c.rainbow = { c.blue, c.yellow, c.magenta, c.green, c.cyan, c.red, c.purple, c.orange }

  c.status.command = c.orange
end

return M
