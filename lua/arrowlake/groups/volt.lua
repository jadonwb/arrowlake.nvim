local M = {}

M.url = "https://github.com/nvzone/volt"

-- volt (and typr/menu/minty/timerly) read a small `Ex*` vocabulary. Without
-- it volt derives them from Normal/Added/Removed, which on a light theme
-- yields muddy maroon/olive tints once the plugins `mix()` them further.

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  local panel = c.backgrounds.panel
  local raised = c.backgrounds.float
  local hi = c.backgrounds.highlight

  -- stylua: ignore
  return {
    ExDarkBg       = { bg = panel },
    ExDarkBorder   = { fg = panel, bg = panel },
    ExBlack2Bg     = { bg = raised },
    ExBlack2Border = { fg = raised, bg = raised },
    ExBlack2border = { fg = raised, bg = raised },
    ExBlack3Bg     = { bg = hi },
    ExBlack3Border = { fg = hi, bg = hi },
    ExRed          = { fg = c.red },
    ExGreen        = { fg = c.green },
    ExYellow       = { fg = c.yellow },
    ExBlue         = { fg = c.blue },
    ExLightGrey    = { fg = c.foregrounds.dark },
    ExInactive     = { fg = c.foregrounds.muted },
    CommentFg      = { fg = c.foregrounds.darker },
  }
end

return M
