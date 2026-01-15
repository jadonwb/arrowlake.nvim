local M = {}

M.url = "https://github.com/dlyongemallo/diffview-plus.nvim"

function M.get(c, opts)
  local Util = require("arrowlake.util")

  return {
    -- Panel UI (base colors resolved from theme)
    DiffviewFilePanelTitle = { fg = c.title, bold = true },

    -- Panel selection
    DiffviewFilePanelSelected = { fg = c.focus, bold = true },
    DiffviewCommitSelected = { fg = c.focus, bold = true },

    -- Not sure
    DiffviewPrimary = { fg = c.primary },
    DiffviewSecondary = { fg = c.secondary },

    -- Status chars
    DiffviewStatusAdded = { fg = c.git.add },
    DiffviewStatusUntracked = { fg = c.git.add },
    DiffviewStatusModified = { fg = c.git.change },
    DiffviewStatusRenamed = { fg = c.git.change },
    DiffviewStatusCopied = { fg = c.git.change },
    DiffviewStatusTypeChange = { fg = c.git.change },
    DiffviewStatusUnmerged = { fg = c.git.change },
    DiffviewStatusDeleted = { fg = c.git.delete },
    DiffviewStatusBroken = { fg = c.git.delete },
    DiffviewStatusUnknown = { fg = c.git.delete },

    -- Panel counts
    DiffviewFilePanelInsertions = { fg = c.git.add, bold = true },
    DiffviewFilePanelDeletions = { fg = c.git.delete, bold = true },
    DiffviewFilePanelConflicts = { link = "DiagnosticSignWarn", bold = true },

    -- Diff coloring
    DiffviewDiffAddText = { bg = c.diff.text },
    DiffviewDiffDeleteText = { bg = Util.blend_bg(c.git.delete, 0.26, c.bg) },
    DiffviewDiffFill = { fg = c.comment },

    -- FH panel refs
    DiffviewReference = { fg = c.info },

    DiffviewSignColumn = "SignColumn",
    DiffviewFolderSign = { fg = c.info },
  }
end

return M
