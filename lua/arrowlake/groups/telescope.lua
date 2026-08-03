local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    TelescopeBorder         = { fg = c.border.color, bg = c.backgrounds.float },
    TelescopeNormal         = { fg = c.foregrounds.normal, bg = c.backgrounds.float },
    TelescopePromptBorder   = { fg = c.focus, bg = c.backgrounds.float },
    TelescopePromptTitle    = { fg = c.focus, bg = c.backgrounds.float },
    TelescopeResultsComment = { fg = c.foregrounds.comment },
  }
end

return M
