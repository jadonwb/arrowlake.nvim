local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    AlphaShortcut    = { fg = c.focus },
    AlphaHeader      = { fg = c.title },
    AlphaHeaderLabel = { fg = c.focus },
    AlphaFooter      = { fg = c.secondary },
    AlphaButtons     = { fg = c.link },
  }
end

return M
