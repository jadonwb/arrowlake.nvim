local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  local which_key_bg = c.bg_float
  if opts.dim_inactive and c.bg_float == c.none then
    which_key_bg = c.bg
  end

  -- stylua: ignore
  return {
    WhichKey          = { fg = c.focus },
    WhichKeyGroup     = { fg = c.primary },
    WhichKeyDesc      = { fg = c.secondary },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyNormal     = { fg = c.fg, bg = which_key_bg },
    WhichKeyTitle     = { fg = c.title, bg = which_key_bg },
    WhichKeyBorder     = { fg = c.border_color, bg = which_key_bg },
    WhichKeyValue     = { fg = c.comment },
  }
end

return M
