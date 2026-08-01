local M = {}

M.url = "https://github.com/b0o/incline.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  return {
    InclineNormal = "StatusLine",
    InclineNormalNC = "StatusLineNC",
  }
end

return M
