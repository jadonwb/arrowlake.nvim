local colors = require("arrowlake.colors").setup()

local arrowlake = {}

arrowlake.normal = {
  left = { { colors.black, colors.status.normal }, { colors.status.normal, colors.bg_darker } },
  middle = { { colors.fg, colors.status.bg } },
  right = { { colors.black, colors.status.normal }, { colors.status.normal, colors.bg_darker } },
  error = { { colors.black, colors.error } },
  warning = { { colors.black, colors.warning } },
}

arrowlake.insert = {
  left = { { colors.black, colors.status.insert }, { colors.status.normal, colors.bg } },
}

arrowlake.visual = {
  left = { { colors.black, colors.status.visual }, { colors.status.normal, colors.bg } },
}

arrowlake.replace = {
  left = { { colors.black, colors.status.replace }, { colors.status.normal, colors.bg } },
}

arrowlake.command = {
  left = { { colors.black, colors.status.command }, { colors.status.normal, colors.bg } },
}

arrowlake.terminal = {
  left = { { colors.black, colors.status.terminal }, { colors.status.normal, colors.bg } },
}

arrowlake.inactive = {
  left = { { colors.status.normal, colors.status.bg }, { colors.comment, colors.bg } },
  middle = { { colors.bg_darker, colors.status.bg } },
  right = { { colors.bg_darker, colors.status.bg }, { colors.comment, colors.bg } },
}

arrowlake.tabline = {
  left = { { colors.comment, colors.bg_highlight }, { colors.comment, colors.bg } },
  middle = { { colors.bg_darker, colors.status.bg } },
  right = { { colors.bg_darker, colors.status.bg }, { colors.comment, colors.bg } },
  tabsel = { { colors.status.normal, colors.bg_darker }, { colors.comment, colors.bg } },
}

return arrowlake
