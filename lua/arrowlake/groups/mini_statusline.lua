local M = {}

M.url = "https://github.com/echasnovski/mini.statusline"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    MiniStatuslineDevinfo     = { fg = c.foregrounds.dark, bg = c.backgrounds.statusline },
    MiniStatuslineFileinfo    = { fg = c.foregrounds.dark, bg = c.backgrounds.statusline },
    MiniStatuslineFilename    = { fg = c.foregrounds.dark, bg = c.backgrounds.statusline },
    MiniStatuslineInactive    = { fg = c.status.normal, bg = c.backgrounds.statusline },
    MiniStatuslineModeCommand = { fg = c.backgrounds.statusline, bg = c.status.command, bold = true },
    MiniStatuslineModeInsert  = { fg = c.backgrounds.statusline, bg = c.status.insert, bold = true },
    MiniStatuslineModeNormal  = { fg = c.backgrounds.statusline, bg = c.status.normal, bold = true },
    MiniStatuslineModeOther   = { fg = c.backgrounds.statusline, bg = c.status.terminal, bold = true },
    MiniStatuslineModeReplace = { fg = c.backgrounds.statusline, bg = c.status.replace, bold = true },
    MiniStatuslineModeVisual  = { fg = c.backgrounds.statusline, bg = c.status.visual, bold = true },
  }
end

return M
