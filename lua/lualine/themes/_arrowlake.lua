local M = {}

---@param style? "dark"|"light"
function M.get(style)
  local colors = require("arrowlake.colors").setup(style or "dark")

  local hl = {}

  hl.normal = {
    a = { bg = colors.status.normal, fg = colors.backgrounds.statusline, gui = "bold" },
    b = { bg = colors.backgrounds.statusline, fg = colors.status.normal },
    c = { bg = colors.backgrounds.statusline, fg = colors.foregrounds.statusline },
  }

  hl.insert = {
    a = { bg = colors.status.insert, fg = colors.backgrounds.statusline, gui = "bold" },
    b = { bg = colors.backgrounds.statusline, fg = colors.status.insert },
  }

  hl.command = {
    a = { bg = colors.status.command, fg = colors.backgrounds.statusline, gui = "bold" },
    b = { bg = colors.backgrounds.statusline, fg = colors.status.command },
  }

  hl.visual = {
    a = { bg = colors.status.visual, fg = colors.backgrounds.statusline, gui = "bold" },
    b = { bg = colors.backgrounds.statusline, fg = colors.status.visual },
  }

  hl.replace = {
    a = { bg = colors.status.replace, fg = colors.backgrounds.statusline, gui = "bold" },
    b = { bg = colors.backgrounds.statusline, fg = colors.status.replace },
  }

  hl.terminal = {
    a = { bg = colors.status.terminal, fg = colors.backgrounds.statusline, gui = "bold" },
    b = { bg = colors.backgrounds.statusline, fg = colors.status.terminal },
  }

  hl.inactive = {
    a = { bg = colors.backgrounds.statusline, fg = colors.status.normal },
    b = { bg = colors.backgrounds.statusline, fg = colors.status.inactive, gui = "bold" },
    c = { bg = colors.backgrounds.statusline, fg = colors.status.inactive },
  }

  return hl
end

return M
