local colors = require("arrowlake.colors").setup()

local arrowlake = {}

arrowlake.normal = {
  left = {
    { colors.backgrounds.statusline, colors.status.normal },
    { colors.status.normal, colors.backgrounds.statusline },
  },
  middle = { { colors.fg, colors.backgrounds.statusline } },
  right = {
    { colors.backgrounds.statusline, colors.status.normal },
    { colors.status.normal, colors.backgrounds.statusline },
  },
  error = { { colors.backgrounds.statusline, colors.diagnostics.error } },
  warning = { { colors.backgrounds.statusline, colors.diagnostics.warning } },
}

arrowlake.insert = {
  left = {
    { colors.backgrounds.statusline, colors.status.insert },
    { colors.status.insert, colors.backgrounds.statusline },
  },
}

arrowlake.visual = {
  left = {
    { colors.backgrounds.statusline, colors.status.visual },
    { colors.status.visual, colors.backgrounds.statusline },
  },
}

arrowlake.replace = {
  left = {
    { colors.backgrounds.statusline, colors.status.replace },
    { colors.status.replace, colors.backgrounds.statusline },
  },
}

arrowlake.command = {
  left = {
    { colors.backgrounds.statusline, colors.status.command },
    { colors.status.command, colors.backgrounds.statusline },
  },
}

arrowlake.terminal = {
  left = {
    { colors.backgrounds.statusline, colors.status.terminal },
    { colors.status.terminal, colors.backgrounds.statusline },
  },
}

arrowlake.inactive = {
  left = { { colors.status.normal, colors.backgrounds.statusline }, { colors.foregrounds.statusline, colors.bg } },
  middle = { { colors.status.inactive, colors.backgrounds.statusline } },
  right = { { colors.status.inactive, colors.backgrounds.statusline }, { colors.foregrounds.statusline, colors.bg } },
}

arrowlake.tabline = {
  left = {
    { colors.foregrounds.statusline, colors.backgrounds.highlight },
    { colors.foregrounds.statusline, colors.bg },
  },
  middle = { { colors.bg_darker, colors.backgrounds.statusline } },
  right = { { colors.bg_darker, colors.backgrounds.statusline }, { colors.foregrounds.statusline, colors.bg } },
  tabsel = { { colors.status.normal, colors.bg_darker }, { colors.foregrounds.statusline, colors.bg } }, -- FIXME: what to do here
}

return arrowlake
