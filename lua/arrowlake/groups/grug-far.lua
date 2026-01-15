local M = {}

M.url = "https://github.com/MagicDuck/grug-far.nvim"

---@type arrowlake.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    GrugFarHelpHeader             = { fg = c.comment },
    GrugFarHelpHeaderKey          = { fg = c.link },
    GrugFarInputLabel             = { fg = c.secondary },
    GrugFarInputPlaceholder       = { fg = c.comment },
    GrugFarResultsChangeIndicator = { fg = c.git.change },
    GrugFarResultsHeader          = { fg = c.focus },
    GrugFarResultsLineColumn      = { fg = c.comment },
    GrugFarResultsLineNo          = { fg = c.comment },
    GrugFarResultsMatch           = { fg = c.fg, bg = c.bg_search_current },
    GrugFarResultsStats           = { fg = c.title },
  }
end

return M
