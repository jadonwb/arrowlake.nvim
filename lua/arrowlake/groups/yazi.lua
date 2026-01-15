local M = {}

M.url = "https://github.com/mikavilpas/yazi.nvim"

---@type arrowlake.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    YaziFloat       = "Normal",
    YaziFloatBorder = "Border",
  }
end

return M
