
local M = {}

-- Backgrounds
M.bg = "#ebe0cf"
M.bg_dark = "#e3d7c7"
M.bg_darker = "#DED0BF"
M.selection = "#d4c6b3"

-- Foregrounds
M.fg = "#54473f"
M.fg_dark = "#6c5e55"
M.fg_darker = "#87786c"
M.fg_gutter = "#ad9b88"

-- Core colors
M.red = "#BC495D"
M.orange = "#C88478"
M.yellow = "#AD8A5A"
M.green = "#4E7469"
M.blue = "#4A74A8"
M.purple = "#6660AF"
M.magenta = "#C16C90"
M.cyan = "#56AEA9"

-- Accent choices
M.primary = M.purple
M.secondary = M.blue
M.focus = M.cyan
M.operator = "#6a8b89"

---@param c arrowlake.Palette
function M.map(c)
  require("arrowlake.colors.mappings").apply(c)
end

return M
