local M = {}

M.url = "https://github.com/nvim-neotest/neotest"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    NeotestAdapterName  = { fg = c.keyword, bold = true },
    NeotestBorder       = { fg = c.border_color },
    NeotestDir          = { fg = c.title },
    NeotestExpandMarker = { fg = c.fg_sidebar },
    NeotestFailed       = { fg = c.error },
    NeotestFile         = { fg = c.link },
    NeotestFocused      = { fg = c.focus },
    NeotestIndent       = { fg = c.fg_sidebar },
    NeotestMarked       = { fg = c.secondary },
    NeotestNamespace    = { fg = c.hint },
    NeotestPassed       = { fg = c.success },
    NeotestRunning      = { fg = c.focus },
    NeotestSkipped      = { fg = c.comment },
    NeotestTarget       = { fg = c.secondary },
    NeotestTest         = { fg = c.fg_sidebar },
    NeotestWinSelect    = { fg = c.attention },
  }
end

return M
