local M = {}

M.url = "https://github.com/alex35mil/delta.nvim"

function M.get(c, opts)
  local Util = require("arrowlake.util")
  return {
    -- Picker
    DeltaPickerBorder = { fg = c.border_color, bg = c.bg },
    DeltaPickerTitle = { fg = c.title, bg = c.bg, bold = true },
    DeltaPickerCursorLine = { bg = c.bg_visual },
    DeltaPickerSectionHeader = { fg = c.title, bg = c.bg, bold = true },
    DeltaPickerDirectory = { fg = c.info },
    --

    -- Spotlight Winbar
    DeltaSpotlightWinbarNumericValue = { fg = c.info },

    -- Shared status
    DeltaStatusModified = { fg = c.git.change },
    DeltaStatusAdded = { fg = c.git.add },
    DeltaStatusDeleted = { fg = c.git.delete },
    DeltaStatusRenamed = { fg = c.git.change },
    DeltaStatusCopied = { fg = c.git.change },
    DeltaStatusUntracked = { fg = c.git.add },

    -- Spotlight Status (using git colors)
    DeltaSpotlightStatusStaged = { fg = c.git.add },
    DeltaSpotlightStatusUntracked = { fg = c.git.add },
    DeltaSpotlightStatusUnstaged = { fg = c.git.change },

    -- Hunk Popup
    DeltaSpotlightPopupTitle = { fg = c.border_color, bg = c.bg_float, bold = true },
    DeltaSpotlightPopupAddedText = { bg = c.diff.text },
    DeltaSpotlightPopupRemovedText = { bg = Util.blend_bg(c.git.delete, 0.26, c.bg) },
    DeltaSpotlightPopupLineNr = { fg = c.fg_gutter },

    -- Scratch Diff
    DeltaSpotlightScratchDiffAdd = { bg = c.diff.add },
    DeltaSpotlightScratchDiffChange = { bg = c.diff.change },
    DeltaSpotlightScratchDiffDelete = { bg = c.diff.delete },

    -- File Diff Winbar
    DeltaDiffFileWinbarBase = { fg = c.title, bg = c.bg, bold = true },
    DeltaDiffFileWinbarCurrent = { fg = c.focus, bg = c.bg, bold = true },
  }
end

return M
