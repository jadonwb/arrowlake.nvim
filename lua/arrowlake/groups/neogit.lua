local M = {}

M.url = "https://github.com/TimUntersberger/neogit"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    NeogitBranch               = { fg = c.ui.header },
    NeogitRemote               = { fg = c.syntax.keyword },
    NeogitHunkHeader           = { bg = c.backgrounds.highlight, fg = c.foregrounds.normal },
    NeogitHunkHeaderHighlight  = { bg = c.backgrounds.highlight, fg = c.ui.header },
    NeogitDiffContextHighlight = { bg = c.backgrounds.highlight, fg = c.foregrounds.dark },
    NeogitDiffDeleteHighlight  = { fg = c.git.delete, bg = c.diff.delete },
    NeogitDiffAddHighlight     = { fg = c.git.add, bg = c.diff.add },
  }
end

return M
