local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/folke/snacks.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  --TODO!: when I configure the plugin here too, make terminals be normal not float bg here
  -- stylua: ignore
  local ret = {
    SnacksNotifierDebug       = { fg = c.foregrounds.normal, bg = c.backgrounds.notification },
    SnacksNotifierBorderDebug = { fg = Util.blend_bg(c.foregrounds.comment, 0.4), bg = c.backgrounds.notification },
    SnacksNotifierIconDebug   = { fg = c.foregrounds.comment, bg = c.backgrounds.notification },
    SnacksNotifierTitleDebug  = { fg = c.foregrounds.comment, bg = c.backgrounds.notification },
    SnacksNotifierError       = { fg = c.foregrounds.normal, bg = c.backgrounds.notification },
    SnacksNotifierBorderError = { fg = Util.blend_bg(c.diagnostics.error, 0.4), bg = c.backgrounds.notification },
    SnacksNotifierIconError   = { fg = c.diagnostics.error, bg = c.backgrounds.notification },
    SnacksNotifierTitleError  = { fg = c.diagnostics.error, bg = c.backgrounds.notification },
    SnacksNotifierInfo        = { fg = c.foregrounds.normal, bg = c.backgrounds.notification },
    SnacksNotifierBorderInfo  = { fg = Util.blend_bg(c.diagnostics.info, 0.4), bg = c.backgrounds.notification },
    SnacksNotifierIconInfo    = { fg = c.diagnostics.info, bg = c.backgrounds.notification },
    SnacksNotifierTitleInfo   = { fg = c.diagnostics.info, bg = c.backgrounds.notification },
    SnacksNotifierTrace       = { fg = c.foregrounds.normal, bg = c.backgrounds.notification },
    SnacksNotifierBorderTrace = { fg = Util.blend_bg(c.diagnostics.trace, 0.4), bg = c.backgrounds.notification },
    SnacksNotifierIconTrace   = { fg = c.diagnostics.trace, bg = c.backgrounds.notification },
    SnacksNotifierTitleTrace  = { fg = c.diagnostics.trace, bg = c.backgrounds.notification },
    SnacksNotifierWarn        = { fg = c.foregrounds.normal, bg = c.backgrounds.notification },
    SnacksNotifierBorderWarn  = { fg = Util.blend_bg(c.diagnostics.warning, 0.4), bg = c.backgrounds.notification },
    SnacksNotifierIconWarn    = { fg = c.diagnostics.warning, bg = c.backgrounds.notification },
    SnacksNotifierTitleWarn   = { fg = c.diagnostics.warning, bg = c.backgrounds.notification },
    -- Dashboard
    SnacksDashboardDesc       = { fg = c.syntax.link },
    SnacksDashboardFooter     = { fg = c.ui.footer },
    SnacksDashboardHeader     = { fg = c.ui.header },
    SnacksDashboardIcon       = { fg = c.ui.icon },
    SnacksDashboardKey        = { fg = c.focus },
    SnacksDashboardSpecial    = { fg = c.syntax.keyword },
    SnacksDashboardDir        = { fg = c.foregrounds.comment },
    -- Profiler
    SnacksProfilerIconInfo    = { bg = Util.blend_bg(c.ui.icon, 0.3), fg = c.ui.icon },
    SnacksProfilerBadgeInfo   = { bg = Util.blend_bg(c.ui.label, 0.1), fg = c.ui.label },
    SnacksFooterKey           = "SnacksProfilerIconInfo",
    SnacksFooterDesc          = "SnacksProfilerBadgeInfo",
    SnacksProfilerIconTrace   = { bg = Util.blend_bg(c.diagnostics.trace, 0.18), fg = c.diagnostics.trace },
    SnacksProfilerBadgeTrace  = { bg = Util.blend_bg(c.diagnostics.trace, 0.1), fg = c.diagnostics.trace },
    SnacksIndent              = { fg = c.foregrounds.indent, nocombine = true },
    SnacksIndentScope         = { fg = c.focus, nocombine = true },
    SnacksZenIcon             = { fg = c.syntax.keyword },
    SnacksInputIcon           = { fg = c.ui.icon },
    SnacksInputNormal         = { fg = c.foregrounds.normal, bg = c.backgrounds.popup },
    SnacksInputBorder         = { fg = c.border.active, bg = c.backgrounds.popup },
    SnacksInputTitle          = { fg = c.border.active_title, bg = c.backgrounds.popup },
    -- Picker
    SnacksPickerInputBorder   = { fg = c.border.active, bg = c.backgrounds.float },
    SnacksPickerInputTitle    = { fg = c.border.title, bg = c.backgrounds.float },
    SnacksPickerBoxTitle      = { fg = c.border.title, bg = c.backgrounds.float },
    SnacksPickerSelected      = { fg = c.ui.attention},
    SnacksPickerToggle        = "SnacksProfilerBadgeInfo",
    SnacksPickerSearch        = "CurSearch", -- TODO: what does this do?
    SnacksPickerMatch         = "CurSearch",
    SnacksPickerPickWinCurrent= { fg = c.foregrounds.normal, bg = c.focus, bold = true },
    SnacksPickerPickWin       = { fg = c.foregrounds.normal, bg = c.backgrounds.search, bold = true },
    SnacksGhLabel             = { fg = c.ui.label, bold = true },
    SnacksGhDiffHeader        = { bg = Util.blend_bg(c.ui.label, 0.1), fg = c.ui.label }, -- same

    -- SnacksPickerGitStatus = {},
    -- SnacksPickerGitStatusIgnored = {},
    -- SnacksPickerGitStatusUntracked = {},
    SnacksPickerGitStatusAdded = "diffAdd",
    SnacksPickerGitStatusStaged = "diffAdd",
    SnacksPickerGitStatusModified = "diffChanged",
    SnacksPickerGitStatusUnmerged = "diffChanged",
    SnacksPickerGitStatusDeleted = "diffRemoved",
    SnacksPickerGitStatusCopied = "diffChanged",
    SnacksPickerGitStatusRenamed = "diffChanged",
  }
  for i, color in ipairs(c.rainbow) do
    ret["SnacksIndent" .. i] = { fg = color, nocombine = true }
  end
  return ret
end

return M
