local M = {}

M.url = "https://github.com/echasnovski/mini.icons"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    MiniIconsGrey   = { fg = c.foregrounds.comment },
    MiniIconsPurple = { fg = c.purple },
    MiniIconsBlue   = { fg = c.blue },
    MiniIconsAzure  = { fg = c.cyan }, -- who picks azure as a required color?
    MiniIconsCyan   = { fg = c.cyan },
    MiniIconsGreen  = { fg = c.green },
    MiniIconsYellow = { fg = c.yellow },
    MiniIconsOrange = { fg = c.orange },
    MiniIconsRed    = { fg = c.red },
  }
end

return M
