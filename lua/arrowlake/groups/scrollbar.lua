local M = {}

M.url = "https://github.com/petertriho/nvim-scrollbar"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    ScrollbarError        = { fg = c.diagnostics.error, bg = c.none },
    ScrollbarErrorHandle  = { fg = c.diagnostics.error, bg = c.backgrounds.highlight },
    ScrollbarHandle       = { fg = c.none, bg = c.backgrounds.highlight },
    ScrollbarHint         = { fg = c.diagnostics.hint, bg = c.none },
    ScrollbarHintHandle   = { fg = c.diagnostics.hint, bg = c.backgrounds.highlight },
    ScrollbarInfo         = { fg = c.diagnostics.info, bg = c.none },
    ScrollbarInfoHandle   = { fg = c.diagnostics.info, bg = c.backgrounds.highlight },
    ScrollbarMisc         = { fg = c.diagnostics.trace, bg = c.none },
    ScrollbarMiscHandle   = { fg = c.diagnostics.trace, bg = c.backgrounds.highlight },
    ScrollbarSearch       = { fg = c.focus, bg = c.none },
    ScrollbarSearchHandle = { fg = c.focus, bg = c.backgrounds.highlight },
    ScrollbarWarn         = { fg = c.diagnostics.warning, bg = c.none },
    ScrollbarWarnHandle   = { fg = c.diagnostics.warning, bg = c.backgrounds.highlight },

  }
end

return M
