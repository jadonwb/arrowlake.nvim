local M = {}

M.url = "https://github.com/echasnovski/mini.trailspace"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    MiniTrailspace = { bg = c.diagnostics.error },
  }
end

return M
