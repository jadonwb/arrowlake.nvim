local M = {}

M.url = "https://github.com/justinmk/vim-sneak"

---@type arrowlake.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    Sneak      = { fg = c.bg_highlight, bg = c.attention },
    SneakScope = { bg = c.bg_visual },
  }
end

return M
