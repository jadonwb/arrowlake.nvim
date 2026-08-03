local M = {}

M.url = "https://github.com/MagicDuck/grug-far.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    GrugFarHelpHeader             = { fg = c.foregrounds.comment },
    GrugFarHelpHeaderKey          = { fg = c.syntax.link },
  }
end

return M
