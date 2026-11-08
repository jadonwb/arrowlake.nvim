local Util = require("arrowlake.util")

local M = {}

---@param style "dark"|"light"
---@return ColorScheme colors
function M.setup(style)
  local palette = vim.deepcopy(require("arrowlake.colors." .. style))

  Util.bg = palette.bg
  Util.fg = palette.fg

  palette.map(palette)
  palette.map = nil -- keep the palette serializable

  palette.none = "NONE"
  palette._style = style

  return palette
end

return M
