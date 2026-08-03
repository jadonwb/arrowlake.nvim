local mappings = require("arrowlake.colors.mappings")

local M = {}

-- Backgrounds
M.bg = "#0D0C25"
M.bg_dark = "#09081a"
M.bg_darker = "#070614"
M.selection = "#161440"

-- Foregrounds
M.fg = "#bec8e8"
M.fg_dark = "#7e85b8"
M.fg_darker = "#5c6296"
M.fg_gutter = "#312e55"
M.special = "#9AC1E5"

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
M.focus = M.orange

---@param c arrowlake.Palette
function M.map(c)
  local U = require("arrowlake.util")
  mappings.apply(c)

  -- Dark overrides: backgrounds
  c.backgrounds.search_current = U.blend_bg(c.magenta, 0.45, c.bg)

  -- Dark overrides: syntax
  c.syntax.string_doc = c.yellow
  c.syntax.md_inline = c.yellow
  c.syntax.parameter = c.yellow
  c.syntax.markup = c.orange
  c.syntax.link = c.cyan

  -- Dark overrides: diagnostics
  c.diagnostics.warning = c.orange
  c.ui.ai = c.cyan

  -- Dark overrides: statusline command mode color
  c.status.command = c.orange

  -- Dark overrides: rainbow ordering
  c.rainbow = { c.blue, c.yellow, c.magenta, c.green, c.cyan, c.purple, c.red, c.orange }
end

return M
