local M = {}

M.url = "https://github.com/alex35mil/delta.nvim"

---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  local Util = require("arrowlake.util")
  return {
    -- Picker
    DeltaPickerBorder = { fg = c.border.color, bg = c.backgrounds.normal },
    DeltaPickerTitle = { fg = c.border.title, bg = c.backgrounds.normal, bold = true },
    DeltaPickerCursorLine = { bg = c.backgrounds.visual },
    DeltaPickerSectionHeader = { fg = c.ui.header, bg = c.backgrounds.normal, bold = true },
    DeltaPickerDirectory = { fg = c.diagnostics.info },
    --

    -- Spotlight Winbar
    DeltaSpotlightWinbarNumericValue = { fg = c.diagnostics.info },

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
    DeltaSpotlightPopupTitle = { fg = c.border.title, bg = c.backgrounds.float, bold = true },
    DeltaSpotlightPopupAddedText = { bg = c.diff.text },
    DeltaSpotlightPopupRemovedText = { bg = Util.blend_bg(c.git.delete, 0.26, c.backgrounds.normal) },
    DeltaSpotlightPopupLineNr = { fg = c.foregrounds.muted },

    -- Scratch Diff
    DeltaSpotlightScratchDiffAdd = { bg = c.diff.add },
    DeltaSpotlightScratchDiffChange = { bg = c.diff.change },
    DeltaSpotlightScratchDiffDelete = { bg = c.diff.delete },

    -- File Diff Winbar
    DeltaDiffFileWinbarBase = { fg = c.border.title, bg = c.backgrounds.normal, bold = true },
    DeltaDiffFileWinbarCurrent = { fg = c.border.active_title, bg = c.backgrounds.normal, bold = true },
  }
end

return M
