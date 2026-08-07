local M = {}

M.url = "https://github.com/MagicDuck/grug-far.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    HauntSign = { fg = c.ui.ai },
    HauntAnnotation = { fg = c.ui.ai },
  }
end

return M
