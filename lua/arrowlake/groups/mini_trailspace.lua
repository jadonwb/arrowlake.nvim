local M = {}

M.url = "https://github.com/echasnovski/mini.trailspace"

---@type arrowlake.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniTrailspace = { bg = c.error },
  }
end

return M
