local M = {}

M.url = "https://github.com/glepnir/lspsaga.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    DefinitionCount            = { fg = c.keyword },
    DefinitionIcon             = { fg = c.title },
    DiagnosticInformation      = "DiagnosticInfo",
    DiagnosticWarning          = "DiagnosticWarn",
    LspFloatWinBorder          = { fg = c.border_color },
    LspFloatWinNormal          = { bg = c.bg_float },
    LspSagaBorderTitle         = { fg = c.link },
    LspSagaCodeActionBorder    = { fg = c.title },
    LspSagaCodeActionContent   = { fg = c.keyword },
    LspSagaCodeActionTitle     = { fg = c.secondary },
    LspSagaDefPreviewBorder    = { fg = c.hint },
    LspSagaFinderSelection     = { bg = c.bg_hover, fg = c.fg },
    LspSagaHoverBorder         = { fg = c.title },
    LspSagaRenameBorder        = { fg = c.hint },
    LspSagaSignatureHelpBorder = { fg = c.functions },
    ReferencesCount            = { fg = c.keyword },
    ReferencesIcon             = { fg = c.title },
    TargetWord                 = { fg = c.link },
  }
end

return M
