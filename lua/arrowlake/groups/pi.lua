local M = {}

M.url = "https://github.com/alex35mil/pi.nvim"

---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  return {
    -- Chat message labels (pill badges)
    PiUserMessageLabel = { fg = c.bg_float, bg = c.secondary, bold = true },
    PiAgentResponseLabel = { fg = c.bg_float, bg = c.ai, bold = true },
    PiMessageDateTime = { fg = c.comment }, -- FIXME: ?
    PiMessageAttachments = { fg = c.attention, italic = true },

    -- Diff review
    PiDiffAdd = { bg = c.diff.add },
    PiDiffDelete = { bg = c.diff.delete },
    PiDiffLineNr = { fg = c.fg_gutter },
    PiDiffWinbar = { bg = c.bg_sidebar },
    PiDiffWinbarCurrent = { fg = c.fg, bold = true }, -- FIXME: ?
    PiDiffWinbarProposed = { fg = c.fg, bold = true }, -- FIXME: ?
    PiDiffWinbarHint = { fg = c.comment },

    -- Winbar chrome
    PiChatHistoryWinbarTitle = { fg = c.bg, bg = c.title, bold = true },
    PiChatHistoryFloatTitle = { fg = c.bg, bg = c.title, bold = true },

    -- Busy/spinner
    PiBusy = { fg = c.ai, bold = true },
    PiBusyTime = { fg = c.comment },

    -- Float windows
    PiFloat = { bg = c.bg_float },
    PiFloatBorder = "FloatBorder",
    PiDialogTitle = { fg = c.border_color, bold = true },

    -- Tool blocks
    PiToolBorder = { fg = c.border_subtle },
    PiToolHeader = { fg = c.info, bold = true },
    PiToolCall = { fg = c.comment },
    PiToolOutput = { fg = c.fg },

    -- Startup
    PiStartupLabel = { fg = c.bg_float, bg = c.comment, bold = true }, -- FIXME: ?
    PiWelcome = { fg = c.info },
    PiMention = { fg = c.info, underline = true },

    -- Errors
    PiError = { fg = c.error },
    PiWarning = { fg = c.warning, italic = true },
    PiToolError = { fg = c.error, italic = true },
  }
end

return M
