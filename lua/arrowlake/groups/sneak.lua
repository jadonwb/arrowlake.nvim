local M = {}

M.url = "https://github.com/justinmk/vim-sneak"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    Sneak      = { fg = c.backgrounds.highlight, bg = c.ui.attention },
    SneakScope = { bg = c.backgrounds.visual },
  }
end

return M
