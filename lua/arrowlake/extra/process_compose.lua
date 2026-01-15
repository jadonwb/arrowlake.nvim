local util = require("arrowlake.util")
local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local process_compose = util.template(
    [=[
style:
  name: ${_name}
  body:
    fgColor: '${fg}'
    bgColor: '${bg}'
    secondaryTextColor: '${fg_dark}'
    tertiaryTextColor: '${comment}'
    borderColor: '${fg_gutter}'
  stat_table:
    keyFgColor: '${yellow}'
    valueFgColor: '${fg}'
    logoColor: '${yellow}'
  proc_table:
    fgColor: '${primary}'
    fgWarning: '${warning}'
    fgPending: '${comment}'
    fgCompleted: '${success}'
    fgError: '${error}'
    headerFgColor: '${fg}'
  help:
    fgColor: '${secondary}'
    keyColor: '${fg}'
    hlColor: '${green}'
    categoryFgColor: '${operator}'
  dialog:
    fgColor: '${secondary}'
    bgColor: '${black}'
    contrastBgColor: '${bg}'
    attentionBgColor: '${error}'
    buttonFgColor: '${black}'
    buttonBgColor: '${bg_highlight}'
    buttonFocusFgColor: '${black}'
    buttonFocusBgColor: '${blue}'
    labelFgColor: '${yellow}'
    fieldFgColor: '${black}'
    fieldBgColor: '${diff.text}'
]=],
    colors
  )

  return process_compose
end

return M
