local M = {}

M.url = "https://github.com/glepnir/lspsaga.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    DefinitionCount            = { fg = c.syntax.keyword },
    DefinitionIcon             = { fg = c.ui.header },
    DiagnosticInformation      = "DiagnosticInfo",
    DiagnosticWarning          = "DiagnosticWarn",
    LspFloatWinBorder          = { bg = c.backgrounds.float, fg = c.border.color },
    LspFloatWinNormal          = { bg = c.backgrounds.float },
    LspSagaBorderTitle         = { fg = c.syntax.link },
    LspSagaCodeActionBorder    = { fg = c.border.color },
    LspSagaCodeActionContent   = { fg = c.syntax.keyword },
    LspSagaCodeActionTitle     = { fg = c.ui.label },
    LspSagaDefPreviewBorder    = { fg = c.diagnostics.hint },
    LspSagaFinderSelection     = { bg = c.backgrounds.hover, fg = c.foregrounds.normal },
    LspSagaHoverBorder         = { fg = c.border.color },
    LspSagaRenameBorder        = { fg = c.diagnostics.hint },
    LspSagaSignatureHelpBorder = { fg = c.syntax.functions },
    ReferencesCount            = { fg = c.syntax.keyword },
    ReferencesIcon             = { fg = c.ui.header },
    TargetWord                 = { fg = c.syntax.link },
  }
end

return M
