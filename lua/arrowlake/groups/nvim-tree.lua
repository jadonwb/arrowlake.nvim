local M = {}

M.url = "https://github.com/kyazdani42/nvim-tree.lua"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    NvimTreeFolderIcon   = { bg = c.none, fg = c.ui.path },
    NvimTreeGitDeleted   = { fg = c.git.delete },
    NvimTreeGitDirty     = { fg = c.git.change },
    NvimTreeGitNew       = { fg = c.git.add },
    NvimTreeImageFile    = { fg = c.syntax.link },
    NvimTreeIndentMarker = { fg = c.foregrounds.indent },
    NvimTreeNormal       = { fg = c.foregrounds.sidebar, bg = c.backgrounds.sidebar },
    NvimTreeNormalNC     = { fg = c.foregrounds.sidebar, bg = c.backgrounds.sidebar },
    NvimTreeOpenedFile   = { bg = c.backgrounds.highlight },
    NvimTreeRootFolder   = { fg = c.ui.path, bold = true },
    NvimTreeSpecialFile  = { fg = c.syntax.keyword, underline = true },
    NvimTreeSymlink      = { fg = c.syntax.link },
    NvimTreeWinSeparator = {   fg = c.border.split  },
  }
end

return M
