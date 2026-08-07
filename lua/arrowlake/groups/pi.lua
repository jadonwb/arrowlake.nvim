local M = {}

M.url = "https://github.com/alex35mil/pi.nvim"

---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  return {
    -- Chat history
    PiUserMessageLabel = { fg = c.ui.label, bold = true },
    PiAgentResponseLabel = { fg = c.ui.ai, bold = true },
    PiMessageDateTime = { fg = c.foregrounds.muted },
    PiMessageAttachments = { fg = c.syntax.link, italic = true },
    -- PiStartupLabel = { fg = c.backgrounds.float, bg = c.foregrounds.comment, bold = true }, -- FIXME: ?
    -- Pending, Compaction, Startup?
    PiWelcome = { fg = c.foregrounds.normal },
    PiMention = { fg = c.diagnostics.info, underline = true },
    PiBusy = { fg = c.ui.ai, bold = true },
    PiBusyTime = { fg = c.foregrounds.muted },
    -- PiDebug
    PiError = { fg = c.diagnostics.error },
    PiWarning = { fg = c.diagnostics.warning, italic = true },

    -- Tool blocks
    PiToolBorder = { fg = c.border.subtle },
    PiToolHeader = { fg = c.ui.label, bold = true },
    PiToolCall = { fg = c.foregrounds.dark },
    PiToolOutput = { fg = c.foregrounds.normal },
    PiToolStatus = { fg = c.diagnostics.success, italic = true },
    PiToolCollapsed = { fg = c.foregrounds.muted, italic = true },
    PiToolError = { fg = c.diagnostics.error, italic = true },
    -- TODO?:
    -- PiTableBorder = { fg = c.ui.footer },
    -- PiTableHeader = { fg = c.ui.header },

    -- Attachments
    PiAttachmentIcon = { fg = c.syntax.link },
    PiAttachmentFilename = { fg = c.syntax.link, italic = true },

    -- Layout
    PiFloat = { bg = c.backgrounds.normal },
    PiFloatBorder = { bg = c.backgrounds.normal, fg = c.border.color },
    PiChatHistoryWinbar = { bg = c.backgrounds.winbar },
    PiChatHistoryWinbarTitle = { fg = c.backgrounds.normal, bg = c.border.title, bold = true },
    PiChatPromptWinbar = { bg = c.backgrounds.winbar },
    PiChatPromptWinbarTitle = { fg = c.foregrounds.winbar, bold = true },
    PiChatPromptWinbarAttentionTitle = { fg = c.focus, bold = true },
    PiChatAttachmentsWinbar = { bg = c.backgrounds.winbar },
    PiChatAttachmentsWinbarTitle = { fg = c.foregrounds.winbar, bold = true },
    PiChatHistoryFloatTitle = { fg = c.backgrounds.normal, bg = c.border.title, bold = true },
    -- PiChatPromptFloatTitle = { fg = c.border.title },
    PiChatPromptFloatAttentionTitle = { fg = c.border.active_title, bold = true },
    -- PiChatAttachmentsFloatTitle = { fg = c.border.title },

    -- Zen TODO: set if want, or make configurable for arrowlake users? via a backdrop option?
    -- PiZen
    -- PiZenBackdrop

    -- Dialogs
    PiDialogSelected = { bg = c.backgrounds.normal },
    PiDialogTitle = { fg = c.border.title, bold = true },

    -- Diff review
    PiDiffAdd = { bg = c.diff.add },
    PiDiffDelete = { bg = c.diff.delete },
    PiDiffLineNr = { fg = c.foregrounds.muted },
    PiDiffWinbar = { bg = c.backgrounds.winbar },
    PiDiffWinbarCurrent = { fg = c.foregrounds.winbar, bold = true },
    PiDiffWinbarProposed = { fg = c.foregrounds.winbar, bold = true },
    PiDiffWinbarHint = { fg = c.foregrounds.comment }, -- TODO?: make a color?
    PiDiffReviewNote = { fg = c.diagnostics.hint },

    -- Statusline
    PiStatusLine = { fg = c.foregrounds.muted },
    PiStatusLineAttention = { fg = c.focus, bold = true },
    PiStatusLineWarning = { fg = c.diagnostics.warning },
    PiStatusLineError = { fg = c.diagnostics.error },
  }
end

return M
