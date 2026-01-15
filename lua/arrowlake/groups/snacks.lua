local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/folke/snacks.nvim"

---@type arrowlake.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    SnacksNotifierDebug       = { fg = c.fg, bg = c.bg_notification },
    SnacksNotifierBorderDebug = { fg = Util.blend_bg(c.comment, 0.4), bg = c.bg_notification },
    SnacksNotifierIconDebug   = { fg = c.comment, bg = c.bg_notification },
    SnacksNotifierTitleDebug  = { fg = c.comment, bg = c.bg_notification },
    SnacksNotifierError       = { fg = c.fg, bg = c.bg_notification },
    SnacksNotifierBorderError = { fg = Util.blend_bg(c.error, 0.4), bg = c.bg_notification },
    SnacksNotifierIconError   = { fg = c.error, bg = c.bg_notification },
    SnacksNotifierTitleError  = { fg = c.error, bg = c.bg_notification },
    SnacksNotifierInfo        = { fg = c.fg, bg = c.bg_notification },
    SnacksNotifierBorderInfo  = { fg = Util.blend_bg(c.info, 0.4), bg = c.bg_notification },
    SnacksNotifierIconInfo    = { fg = c.info, bg = c.bg_notification },
    SnacksNotifierTitleInfo   = { fg = c.info, bg = c.bg_notification },
    SnacksNotifierTrace       = { fg = c.fg, bg = c.bg_notification },
    SnacksNotifierBorderTrace = { fg = Util.blend_bg(c.trace, 0.4), bg = c.bg_notification },
    SnacksNotifierIconTrace   = { fg = c.trace, bg = c.bg_notification },
    SnacksNotifierTitleTrace  = { fg = c.trace, bg = c.bg_notification },
    SnacksNotifierWarn        = { fg = c.fg, bg = c.bg_notification },
    SnacksNotifierBorderWarn  = { fg = Util.blend_bg(c.warning, 0.4), bg = c.bg_notification },
    SnacksNotifierIconWarn    = { fg = c.warning, bg = c.bg_notification },
    SnacksNotifierTitleWarn   = { fg = c.warning, bg = c.bg_notification },
    -- Dashboard
    SnacksDashboardDesc       = { fg = c.link },
    SnacksDashboardFooter     = { fg = c.secondary },
    SnacksDashboardHeader     = { fg = c.title },
    SnacksDashboardIcon       = { fg = c.secondary },
    SnacksDashboardKey        = { fg = c.focus },
    SnacksDashboardSpecial    = { fg = c.keyword },
    SnacksDashboardDir        = { fg = c.comment },
    -- Profiler
    SnacksProfilerIconInfo    = { bg = Util.blend_bg(c.secondary, 0.3), fg = c.secondary },
    SnacksProfilerBadgeInfo   = { bg = Util.blend_bg(c.secondary, 0.1), fg = c.secondary },
    SnacksFooterKey           = "SnacksProfilerIconInfo",
    SnacksFooterDesc          = "SnacksProfilerBadgeInfo",
    SnacksProfilerIconTrace   = { bg = Util.blend_bg(c.trace, 0.18), fg = c.trace },
    SnacksProfilerBadgeTrace  = { bg = Util.blend_bg(c.trace, 0.1), fg = c.trace },
    SnacksIndent              = { fg = c.fg_gutter, nocombine = true },
    SnacksIndentScope         = { fg = c.focus, nocombine = true },
    SnacksZenIcon             = { fg = c.keyword },
    SnacksInputIcon           = { fg = c.secondary },
    SnacksInputNormal         = { fg = c.fg, bg = c.bg_float },
    SnacksInputBorder         = { fg = c.focus, bg = c.bg_float },
    SnacksInputTitle          = { fg = c.focus, bg = c.bg_float },
    -- Picker
    SnacksPickerInputBorder   = { fg = c.focus, bg = c.bg_float },
    SnacksPickerInputTitle    = { fg = c.title, bg = c.bg_float },
    SnacksPickerBoxTitle      = { fg = c.title, bg = c.bg_float },
    SnacksPickerSelected      = { fg = c.attention},
    SnacksPickerToggle        = "SnacksProfilerBadgeInfo",
    SnacksPickerPickWinCurrent= { fg = c.fg, bg = c.attention, bold = true },
    SnacksPickerPickWin       = { fg = c.fg, bg = c.bg_search, bold = true },
    SnacksGhLabel             = { fg = c.secondary, bold = true },
    SnacksGhDiffHeader        = { bg = Util.blend_bg(c.secondary, 0.1), fg = c.secondary }
  }
  for i, color in ipairs(c.rainbow) do
    ret["SnacksIndent" .. i] = { fg = color, nocombine = true }
  end
  return ret
end

return M
