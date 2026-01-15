local M = {}

M.url = "https://github.com/folke/trouble.nvim"

---@type arrowlake.HighlightsFn
function M.get(c, opts)

  -- stylua: ignore
  return {
    TroubleText   = { fg = c.fg_dark },
    TroubleCount  = { fg = c.attention, bg = c.bg_hover },
    TroubleNormal = "Normal",
  }
end

return M
