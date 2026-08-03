local M = {}

M.url = "https://github.com/ibhagwan/fzf-lua"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    FzfLuaBorder        = { fg = c.border.color, bg = c.backgrounds.float },
    FzfLuaCursor        = "IncSearch",
    FzfLuaDirPart       = { fg = c.foregrounds.dark },
    FzfLuaFilePart      = "FzfLuaFzfNormal",
    FzfLuaFzfCursorLine = "Visual",
    FzfLuaFzfNormal     = { fg = c.foregrounds.normal },
    FzfLuaFzfPointer    = { fg = c.ui.attention },
    FzfLuaFzfSeparator  = { fg = c.focus, bg = c.backgrounds.float },
    FzfLuaHeaderBind    = "@punctuation.special",
    FzfLuaHeaderText    = "Title",
    FzfLuaNormal        = { fg = c.foregrounds.normal, bg = c.backgrounds.float },
    FzfLuaPath          = "Directory",
    FzfLuaPreviewTitle  = { fg = c.ui.header, bg = c.backgrounds.float },
    FzfLuaTitle         = { fg = c.focus, bg = c.backgrounds.float },
  }
end

return M
