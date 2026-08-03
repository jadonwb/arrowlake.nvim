local M = {}

M.url = "https://github.com/echasnovski/mini.jump"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    MiniJump             = { bg = c.ui.attention, fg = "#ffffff" },
    MiniJump2dDim        = "Comment",
    MiniJump2dSpot       = { fg = c.ui.attention, bold = true, nocombine = true },
    MiniJump2dSpotAhead  = { fg = c.diagnostics.hint, bg = c.backgrounds.dark, nocombine = true },
    MiniJump2dSpotUnique = { fg = c.focus, bold = true, nocombine = true },
  }
end

return M
