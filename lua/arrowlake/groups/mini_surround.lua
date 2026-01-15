local M = {}

M.url = "https://github.com/echasnovski/mini.surround"

---@type arrowlake.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniSurround = { bg = c.focus, fg = c.black },
  }
end

return M
