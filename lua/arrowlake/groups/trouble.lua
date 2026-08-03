local M = {}

M.url = "https://github.com/folke/trouble.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)

  -- stylua: ignore
  return {
    TroubleText   = { fg = c.foregrounds.dark },
    TroubleCount  = { fg = c.ui.attention, bg = c.backgrounds.hover },
    TroubleNormal = { fg = c.foregrounds.normal, bg = c.backgrounds.sidebar },
  }
end

return M
