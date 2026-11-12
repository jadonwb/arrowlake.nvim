local M = {}

M.url = "https://github.com/nvim-tree/nvim-tree.lua"

-- NvChad's tree look: the tree sits on the panel surface and the cursor row
-- lifts; its separator is the shared hairline channel like every other split.

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  local panel = c.backgrounds.panel

  -- stylua: ignore
  return {
    NvimTreeNormal            = { fg = c.foregrounds.normal, bg = panel },
    NvimTreeNormalNC          = { fg = c.foregrounds.normal, bg = panel },
    NvimTreeNormalFloat       = "NormalFloat",
    NvimTreeEndOfBuffer       = { fg = panel, bg = panel },
    NvimTreeWinSeparator      = "WinSeparator",
    NvimTreeCursorLine        = { bg = c.backgrounds.highlight },
    NvimTreeSignColumn        = { bg = panel },
    NvimTreeStatusLine        = "StatusLine",
    NvimTreeRootFolder        = { fg = c.primary, bold = true },
    NvimTreeFolderIcon        = { fg = c.secondary },
    NvimTreeFolderName        = { fg = c.secondary },
    NvimTreeOpenedFolderName  = { fg = c.primary },
    NvimTreeEmptyFolderName   = { fg = c.secondary },
    NvimTreeFolderArrowOpen   = { fg = c.primary },
    NvimTreeFolderArrowClosed = { fg = c.foregrounds.muted },
    NvimTreeIndentMarker      = { fg = c.backgrounds.highlight },
    NvimTreeOpenedHL          = { fg = c.foregrounds.normal, bold = true },
    NvimTreeSpecialFile       = { fg = c.yellow, bold = true },
    NvimTreeSymlink           = { fg = c.cyan },
    NvimTreeExecFile          = { fg = c.green },
    NvimTreeImageFile         = { fg = c.magenta },
    NvimTreeGitDirtyIcon      = { fg = c.git.change },
    NvimTreeGitStagedIcon     = { fg = c.git.add },
    NvimTreeGitNewIcon        = { fg = c.git.add },
    NvimTreeGitDeletedIcon    = { fg = c.git.delete },
    NvimTreeGitRenamedIcon    = { fg = c.git.change },
    NvimTreeGitMergeIcon      = { fg = c.red },
    NvimTreeGitIgnoredIcon    = { fg = c.git.ignore },
    NvimTreeGitFileDirtyHL    = { fg = c.git.change },
    NvimTreeGitFileNewHL      = { fg = c.git.add },
    NvimTreeGitFileStagedHL   = { fg = c.git.add },
    NvimTreeGitFileIgnoredHL  = { fg = c.git.ignore },
    NvimTreeGitFolderDirtyHL  = { fg = c.git.change },
    NvimTreeModifiedIcon      = { fg = c.orange },
    NvimTreeBookmarkIcon      = { fg = c.magenta },
    NvimTreeWindowPicker      = { fg = c.bg, bg = c.primary, bold = true },
    NvimTreeLiveFilterPrefix  = { fg = c.magenta, bold = true },
    NvimTreeLiveFilterValue   = { fg = c.foregrounds.normal, bold = true },
  }
end

return M
