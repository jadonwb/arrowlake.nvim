local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type arrowlake.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    TelescopeBorder         = { fg = c.border_color, bg = c.bg_float },
    TelescopeNormal         = { fg = c.fg, bg = c.bg_float },
    TelescopePromptBorder   = { fg = c.focus, bg = c.bg_float },
    TelescopePromptTitle    = { fg = c.focus, bg = c.bg_float },
    TelescopeResultsComment = { fg = c.comment },
  }
end

return M
