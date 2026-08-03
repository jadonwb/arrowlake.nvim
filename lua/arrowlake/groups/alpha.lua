local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    AlphaShortcut    = { fg = c.focus },
    AlphaHeader      = { fg = c.ui.header },
    AlphaHeaderLabel = { fg = c.focus },
    AlphaFooter      = { fg = c.ui.footer },
    AlphaButtons     = { fg = c.syntax.link },
  }
end

return M
