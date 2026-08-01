local M = {}

M.url = "https://github.com/dmtrKovalenko/fff.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- Git status text highlights (color filenames by git status)
    FFFGitStaged               = { fg = c.git.add },
    FFFGitModified             = { fg = c.git.change },
    FFFGitDeleted              = { fg = c.git.delete },
    FFFGitRenamed              = { fg = c.git.change },
    FFFGitUntracked            = { fg = c.git.add },
    FFFGitIgnored              = { fg = c.comment },
    -- Git sign-column highlights (bg inherits from SignColumn)
    FFFGitSignStaged           = { fg = c.git.add },
    FFFGitSignModified         = { fg = c.git.change },
    FFFGitSignDeleted          = { fg = c.git.delete },
    FFFGitSignRenamed          = { fg = c.git.change },
    FFFGitSignUntracked        = { fg = c.git.add },
    FFFGitSignIgnored          = { fg = c.comment },
    -- Selected state git signs (on Visual/CursorLine background)
    FFFGitSignStagedSelected    = { fg = c.git.add, bg = c.bg_visual },
    FFFGitSignModifiedSelected  = { fg = c.git.change, bg = c.bg_visual },
    FFFGitSignDeletedSelected   = { fg = c.git.delete, bg = c.bg_visual },
    FFFGitSignRenamedSelected   = { fg = c.git.change, bg = c.bg_visual },
    FFFGitSignUntrackedSelected = { fg = c.git.add, bg = c.bg_visual },
    FFFGitSignIgnoredSelected   = { fg = c.comment, bg = c.bg_visual },
    -- Selection highlights
    FFFSelected                 = { fg = c.attention },
    FFFSelectedActive           = { fg = c.focus, bg = c.bg_visual },
    -- File info panel (title/info bar above picker and preview)
    FFFFileInfoSection          = { fg = c.title, bg = c.bg_float },
    FFFFileInfoSeparator        = { fg = c.border_color, bg = c.bg_float },
    FFFFileInfoLabel            = { fg = c.comment, bg = c.bg_float },
    FFFFileInfoValue            = { fg = c.fg, bg = c.bg_float },
    FFFFileInfoValueDim         = { fg = c.fg_gutter, bg = c.bg_float },
    FFFFileInfoSize             = { fg = c.constant, bg = c.bg_float },
    FFFFileInfoType             = { fg = c.type, bg = c.bg_float },
    FFFFileInfoPath             = { fg = c.primary, bg = c.bg_float },
    FFFFileInfoScorePos         = { fg = c.success, bg = c.bg_float },
    FFFFileInfoScoreNeg         = { fg = c.error, bg = c.bg_float },
    FFFFileInfoTotalScore       = { fg = c.fg, bg = c.bg_float, bold = true },
    FFFFileInfoMatchType        = { fg = c.keyword, bg = c.bg_float, bold = true },
  }
end

return M
