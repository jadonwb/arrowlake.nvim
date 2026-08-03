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
    tertiaryTextColor: '${foregrounds.comment}'
    borderColor: '${fg_gutter}'
  stat_table:
    keyFgColor: '${yellow}'
    valueFgColor: '${fg}'
    logoColor: '${yellow}'
  proc_table:
    fgColor: '${primary}'
    fgWarning: '${diagnostics.warning}'
    fgPending: '${foregrounds.comment}'
    fgCompleted: '${diagnostics.success}'
    fgError: '${diagnostics.error}'
    headerFgColor: '${fg}'
  help:
    fgColor: '${secondary}'
    keyColor: '${fg}'
    hlColor: '${green}'
    categoryFgColor: '${syntax.operator}'
  dialog:
    fgColor: '${secondary}'
    bgColor: '${terminal.black}'
    contrastBgColor: '${bg}'
    attentionBgColor: '${diagnostics.error}'
    buttonFgColor: '${terminal.black}'
    buttonBgColor: '${backgrounds.highlight}'
    buttonFocusFgColor: '${terminal.black}'
    buttonFocusBgColor: '${blue}'
    labelFgColor: '${yellow}'
    fieldFgColor: '${terminal.black}'
    fieldBgColor: '${diff.text}'
]=],
    colors
  )

  return process_compose
end

return M
