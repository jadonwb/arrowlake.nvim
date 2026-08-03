local M = {}

M.url = "https://github.com/echasnovski/mini.surround"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    MiniSurround = { bg = c.focus, fg = c.bg_darker },
  }
end

return M
