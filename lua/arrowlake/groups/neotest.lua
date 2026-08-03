local M = {}

M.url = "https://github.com/nvim-neotest/neotest"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    NeotestAdapterName  = { fg = c.syntax.keyword, bold = true },
    NeotestBorder       = { fg = c.border.color },
    NeotestDir          = { fg = c.ui.path },
    NeotestExpandMarker = { fg = c.foregrounds.sidebar },
    NeotestFailed       = { fg = c.diagnostics.error },
    NeotestFile         = { fg = c.syntax.link },
    NeotestFocused      = { fg = c.focus },
    NeotestIndent       = { fg = c.foregrounds.indent },
    NeotestMarked       = { fg = c.ui.label },
    NeotestNamespace    = { fg = c.diagnostics.hint },
    NeotestPassed       = { fg = c.diagnostics.success },
    NeotestRunning      = { fg = c.focus },
    NeotestSkipped      = { fg = c.foregrounds.sidebar },
    NeotestTarget       = { fg = c.ui.label },
    NeotestTest         = { fg = c.foregrounds.sidebar },
    NeotestWinSelect    = { fg = c.ui.attention },
  }
end

return M
