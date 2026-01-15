local M = {}

---@param style? string
function M.get(style)
  local colors, config = require("arrowlake.colors").setup({
    style = style,
  })

  local hl = {}

  hl.normal = {
    a = { bg = colors.status.normal, fg = colors.black },
    b = { bg = colors.status.bg, fg = colors.status.normal },
    c = { bg = colors.status.bg, fg = colors.fg_sidebar },
  }

  hl.insert = {
    a = { bg = colors.status.insert, fg = colors.black },
    b = { bg = colors.status.bg, fg = colors.status.insert },
  }

  hl.command = {
    a = { bg = colors.status.command, fg = colors.black },
    b = { bg = colors.status.bg, fg = colors.status.command },
  }

  hl.visual = {
    a = { bg = colors.status.visual, fg = colors.black },
    b = { bg = colors.status.bg, fg = colors.status.visual },
  }

  hl.replace = {
    a = { bg = colors.status.replace, fg = colors.black },
    b = { bg = colors.status.bg, fg = colors.status.replace },
  }

  hl.terminal = {
    a = { bg = colors.status.terminal, fg = colors.black },
    b = { bg = colors.status.bg, fg = colors.status.terminal },
  }

  hl.inactive = {
    a = { bg = colors.status.bg, fg = colors.status.normal },
    b = { bg = colors.status.bg, fg = colors.black, gui = "bold" },
    c = { bg = colors.status.bg, fg = colors.black },
  }

  if config.lualine_bold then
    for _, mode in pairs(hl) do
      mode.a.gui = "bold"
    end
  end
  return hl
end

return M
