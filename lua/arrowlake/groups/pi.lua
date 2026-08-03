local M = {}

M.url = "https://github.com/alex35mil/pi.nvim"

---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  return {
    -- Chat message labels (pill badges)
    PiUserMessageLabel = { fg = c.ui.label, bold = true }, -- TEST: same as below
    PiAgentResponseLabel = { fg = c.ui.ai, bold = true }, -- TEST: trying out the fg as the color, no bg
    PiMessageDateTime = { fg = c.foregrounds.muted },
    PiMessageAttachments = { fg = c.syntax.link, italic = true },

    -- Diff review
    PiDiffAdd = { bg = c.diff.add },
    PiDiffDelete = { bg = c.diff.delete },
    PiDiffLineNr = { fg = c.foregrounds.muted },
    PiDiffWinbar = { bg = c.backgrounds.winbar },
    PiDiffWinbarCurrent = { fg = c.foregrounds.dark, bold = true },
    PiDiffWinbarProposed = { fg = c.foregrounds.dark, bold = true },
    PiDiffWinbarHint = { fg = c.foregrounds.comment },

    -- Winbar chrome
    PiChatHistoryWinbarTitle = { fg = c.backgrounds.normal, bg = c.border.title, bold = true },
    PiChatHistoryFloatTitle = { fg = c.backgrounds.normal, bg = c.border.title, bold = true },

    -- Busy/spinner
    PiBusy = { fg = c.ui.ai, bold = true },
    PiBusyTime = { fg = c.foregrounds.muted },

    -- Float windows
    PiFloat = { bg = c.backgrounds.float },
    PiFloatBorder = "FloatBorder",
    PiDialogTitle = { fg = c.border.title, bold = true },

    -- Tool blocks
    PiToolBorder = { fg = c.border.subtle },
    PiToolHeader = { fg = c.diagnostics.info, bold = true },
    PiToolCall = { fg = c.foregrounds.comment },
    PiToolOutput = { fg = c.foregrounds.normal },

    -- Startup
    PiStartupLabel = { fg = c.backgrounds.float, bg = c.foregrounds.comment, bold = true }, -- FIXME: ?
    PiWelcome = { fg = c.diagnostics.info },
    PiMention = { fg = c.diagnostics.info, underline = true },

    -- Errors
    PiError = { fg = c.diagnostics.error },
    PiWarning = { fg = c.diagnostics.warning, italic = true },
    PiToolError = { fg = c.diagnostics.error, italic = true },
  }
end

return M
