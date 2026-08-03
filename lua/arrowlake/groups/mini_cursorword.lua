local M = {}

M.url = "https://github.com/echasnovski/mini.cursorword"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    MiniCursorword        = { bg = c.foregrounds.muted },
    MiniCursorwordCurrent = { bg = c.foregrounds.muted },
  }
end

return M
