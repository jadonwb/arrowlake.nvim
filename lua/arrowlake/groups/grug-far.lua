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
    GrugFarInputLabel             = { fg = c.ui.label },
    GrugFarInputPlaceholder       = { fg = c.foregrounds.comment },
    GrugFarResultsChangeIndicator = { fg = c.git.change },
    GrugFarResultsHeader          = { fg = c.focus },
    GrugFarResultsLineColumn      = { fg = c.foregrounds.comment },
    GrugFarResultsLineNo          = { fg = c.foregrounds.comment },
    GrugFarResultsMatch           = { fg = c.foregrounds.normal, bg = c.backgrounds.search_current },
    GrugFarResultsStats           = { fg = c.diagnostics.trace },
  }
end

return M
