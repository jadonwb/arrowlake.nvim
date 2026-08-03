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
    FFFGitIgnored              = { fg = c.foregrounds.comment },
    -- Git sign-column highlights (bg inherits from SignColumn)
    FFFGitSignStaged           = { fg = c.git.add },
    FFFGitSignModified         = { fg = c.git.change },
    FFFGitSignDeleted          = { fg = c.git.delete },
    FFFGitSignRenamed          = { fg = c.git.change },
    FFFGitSignUntracked        = { fg = c.git.add },
    FFFGitSignIgnored          = { fg = c.foregrounds.comment },
    -- Selected state git signs (on Visual/CursorLine background)
    FFFGitSignStagedSelected    = { fg = c.git.add, bg = c.backgrounds.visual },
    FFFGitSignModifiedSelected  = { fg = c.git.change, bg = c.backgrounds.visual },
    FFFGitSignDeletedSelected   = { fg = c.git.delete, bg = c.backgrounds.visual },
    FFFGitSignRenamedSelected   = { fg = c.git.change, bg = c.backgrounds.visual },
    FFFGitSignUntrackedSelected = { fg = c.git.add, bg = c.backgrounds.visual },
    FFFGitSignIgnoredSelected   = { fg = c.foregrounds.comment, bg = c.backgrounds.visual },
    -- Selection highlights
    FFFSelected                 = { fg = c.ui.attention },
    FFFSelectedActive           = { fg = c.focus, bg = c.backgrounds.visual },
    -- File info panel (title/info bar above picker and preview)
    FFFFileInfoSection          = { fg = c.border.title, bg = c.backgrounds.float },
    FFFFileInfoSeparator        = { fg = c.border.color, bg = c.backgrounds.float },
    FFFFileInfoLabel            = { fg = c.foregrounds.comment, bg = c.backgrounds.float },
    FFFFileInfoValue            = { fg = c.foregrounds.normal, bg = c.backgrounds.float },
    FFFFileInfoValueDim         = { fg = c.foregrounds.muted, bg = c.backgrounds.float },
    FFFFileInfoSize             = { fg = c.syntax.constant, bg = c.backgrounds.float },
    FFFFileInfoType             = { fg = c.syntax.type, bg = c.backgrounds.float },
    FFFFileInfoPath             = { fg = c.ui.path, bg = c.backgrounds.float },
    FFFFileInfoScorePos         = { fg = c.diagnostics.success, bg = c.backgrounds.float },
    FFFFileInfoScoreNeg         = { fg = c.diagnostics.error, bg = c.backgrounds.float },
    FFFFileInfoTotalScore       = { fg = c.foregrounds.normal, bg = c.backgrounds.float, bold = true },
    FFFFileInfoMatchType        = { fg = c.syntax.keyword, bg = c.backgrounds.float, bold = true },
  }
end

return M
