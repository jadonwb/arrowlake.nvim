local M = {}

M.url = "https://github.com/RRethy/vim-illuminate"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    IlluminatedWordRead  = { bg = c.bg_hover },
    IlluminatedWordText  = { bg = c.bg_hover },
    IlluminatedWordWrite = { bg = c.bg_hover },
    illuminatedCurWord   = { bg = c.bg_hover },
    illuminatedWord      = { bg = c.bg_hover },
  }
end

return M
