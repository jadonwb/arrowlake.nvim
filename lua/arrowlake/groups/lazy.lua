local M = {}

M.url = "https://github.com/folke/lazy.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    LazyBold              = { bold = true },
    LazyButton            = { fg = c.fg, bg = c.bg_highlight },
    LazyButtonActive      = { fg = c.fg, bg = c.bg_visual },
    LazyComment           = { fg = c.comment },
    LazyCommit            = { fg = c.git.add },
    LazyCommitIssue       = { fg = c.git.change },
    LazyCommitScope       = { italic = true },
    LazyCommitType        = { fg = c.title, bold = true },
    LazyDimmed            = { fg = c.fg_gutter },
    LazyDir               = { fg = c.primary },
    LazyError             = { fg = c.error },
    LazyH1                = { fg = c.title, bg = c.bg_visual, bold = true },
    LazyH2                = { fg = c.secondary, bold = true },
    LazyInfo              = { fg = c.hint },
    LazyItalic            = { italic = true },
    LazyLocal             = { fg = c.constant },
    LazyNoCond            = { fg = c.warning },
    LazyNormal            = { fg = c.fg, bg = c.bg_float },
    LazyProgressDone      = { fg = c.attention, bold = true },
    LazyProgressTodo      = { fg = c.fg_gutter, bold = true },
    LazyProp              = { fg = c.fg_gutter },
    LazyReasonCmd         = { fg = c.operator },
    LazyReasonEvent       = { fg = c.constant },
    LazyReasonFt          = { fg = c.string },
    LazyReasonImport      = { fg = c.variable },
    LazyReasonKeys        = { fg = c.keyword },
    LazyReasonPlugin      = { fg = c.functions },
    LazyReasonRequire     = { fg = c.secondary},
    LazyReasonRuntime     = { fg = c.parameter },
    LazyReasonSource      = { fg = c.string },
    LazyReasonStart       = { fg = c.member },
    LazySpecial           = { fg = c.attention },
    LazyTaskOutput        = { fg = c.fg_dark },
    LazyUrl               = { fg = c.link },
    LazyValue             = { fg = c.string },
    LazyWarning           = { fg = c.warning },
  }
end

return M
