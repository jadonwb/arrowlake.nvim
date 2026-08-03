local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    WhichKey          = { fg = c.focus },
    WhichKeyGroup     = { fg = c.ui.header },
    WhichKeyDesc      = { fg = c.ui.label },
    WhichKeySeparator = { fg = c.foregrounds.comment },
    WhichKeyNormal     = { fg = c.foregrounds.normal, bg = c.backgrounds.popup },
    WhichKeyTitle     = { fg = c.border.title, bg = c.backgrounds.popup },
    WhichKeyBorder     = { fg = c.border.color, bg = c.backgrounds.popup },
    WhichKeyValue     = { fg = c.foregrounds.comment },
  }
end

return M
