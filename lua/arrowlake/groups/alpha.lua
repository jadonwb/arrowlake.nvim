local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

---@type arrowlake.HighlightsFn
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
