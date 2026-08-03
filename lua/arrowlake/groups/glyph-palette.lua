local M = {}

M.url = "https://github.com/lambdalisue/glyph-palette.vim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    GlyphPalette1 = { fg = c.diagnostics.error },
    GlyphPalette2 = { fg = c.diagnostics.success },
    GlyphPalette3 = { fg = c.diagnostics.warning },
    GlyphPalette4 = { fg = c.diagnostics.info },
    GlyphPalette6 = { fg = c.foregrounds.comment },
    GlyphPalette7 = { fg = c.foregrounds.normal },
    GlyphPalette9 = { fg = c.diagnostics.error },
  }
end

return M
