local M = {}

M.url = "https://github.com/folke/lazy.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- FIXME: redo this whole thing from scratch?
    LazyBold              = { bold = true },
    LazyButton            = { fg = c.foregrounds.normal, bg = c.backgrounds.highlight },
    LazyButtonActive      = { fg = c.foregrounds.normal, bg = c.backgrounds.visual },
    LazyComment           = { fg = c.foregrounds.comment },
    LazyCommit            = { fg = c.git.add },
    LazyCommitIssue       = { fg = c.git.change },
    LazyCommitScope       = { italic = true },
    LazyCommitType        = { fg = c.ui.header, bold = true },
    LazyDimmed            = { fg = c.foregrounds.muted },
    LazyDir               = { fg = c.ui.path },
    LazyError             = { fg = c.diagnostics.error },
    LazyH1                = { fg = c.ui.header, bg = c.backgrounds.visual, bold = true },
    LazyH2                = { fg = c.ui.label, bold = true },
    LazyInfo              = { fg = c.diagnostics.info },
    LazyItalic            = { italic = true },
    LazyLocal             = { fg = c.syntax.type },
    LazyNoCond            = { fg = c.diagnostics.warning },
    LazyNormal            = { fg = c.foregrounds.normal, bg = c.backgrounds.float },
    LazyProgressDone      = { fg = c.ui.attention, bold = true },
    LazyProgressTodo      = { fg = c.foregrounds.muted, bold = true },
    LazyProp              = { fg = c.foregrounds.muted },
    LazyReasonCmd         = { fg = c.syntax.operator },
    LazyReasonEvent       = { fg = c.syntax.constant },
    LazyReasonFt          = { fg = c.syntax.string },
    LazyReasonImport      = { fg = c.syntax.variable },
    LazyReasonKeys        = { fg = c.focus },
    LazyReasonPlugin      = { fg = c.syntax.functions },
    LazyReasonRequire     = { fg = c.ui.label},
    LazyReasonRuntime     = { fg = c.syntax.parameter },
    LazyReasonSource      = { fg = c.syntax.string },
    LazyReasonStart       = { fg = c.foregrounds.member },
    LazySpecial           = { fg = c.syntax.link },
    LazyTaskOutput        = { fg = c.foregrounds.comment },
    LazyUrl               = { fg = c.syntax.link },
    LazyValue             = { fg = c.syntax.string },
    LazyWarning           = { fg = c.diagnostics.warning },
  }
end

return M
