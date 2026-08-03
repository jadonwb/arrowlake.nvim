local M = {}

M.url = "https://github.com/RRethy/vim-illuminate"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    IlluminatedWordRead  = { bg = c.backgrounds.hover },
    IlluminatedWordText  = { bg = c.backgrounds.hover },
    IlluminatedWordWrite = { bg = c.backgrounds.hover },
    illuminatedCurWord   = { bg = c.backgrounds.hover },
    illuminatedWord      = { bg = c.backgrounds.hover },
  }
end

return M
