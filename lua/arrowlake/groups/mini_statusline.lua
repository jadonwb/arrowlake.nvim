local M = {}

M.url = "https://github.com/echasnovski/mini.statusline"

---@type arrowlake.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniStatuslineDevinfo     = { fg = c.fg_dark, bg = c.status.bg },
    MiniStatuslineFileinfo    = { fg = c.fg_dark, bg = c.status.bg },
    MiniStatuslineFilename    = { fg = c.fg_dark, bg = c.status.bg },
    MiniStatuslineInactive    = { fg = c.title, bg = c.status.bg },
    MiniStatuslineModeCommand = { fg = c.black, bg = c.status.command, bold = true },
    MiniStatuslineModeInsert  = { fg = c.black, bg = c.status.insert, bold = true },
    MiniStatuslineModeNormal  = { fg = c.black, bg = c.status.normal, bold = true },
    MiniStatuslineModeOther   = { fg = c.black, bg = c.status.terminal, bold = true },
    MiniStatuslineModeReplace = { fg = c.black, bg = c.status.replace, bold = true },
    MiniStatuslineModeVisual  = { fg = c.black, bg = c.status.visual, bold = true },
  }
end

return M
