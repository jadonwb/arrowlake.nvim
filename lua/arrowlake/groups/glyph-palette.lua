local M = {}

M.url = "https://github.com/lambdalisue/glyph-palette.vim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    GlyphPalette1 = { fg = c.error },
    GlyphPalette2 = { fg = c.success },
    GlyphPalette3 = { fg = c.warning },
    GlyphPalette4 = { fg = c.title },
    GlyphPalette6 = { fg = c.success },
    GlyphPalette7 = { fg = c.fg },
    GlyphPalette9 = { fg = c.error },
  }
end

return M
