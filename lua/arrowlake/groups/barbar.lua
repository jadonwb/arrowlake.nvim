local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/romgrk/barbar.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    BufferAlternate        = { bg = c.backgrounds.sidebar, fg = c.foregrounds.normal },
    BufferAlternateADDED   = { bg = c.backgrounds.sidebar, fg = c.git.add },
    BufferAlternateCHANGED = { bg = c.backgrounds.sidebar, fg = c.git.change },
    BufferAlternateDELETED = { bg = c.backgrounds.sidebar, fg = c.git.delete },
    BufferAlternateERROR   = { bg = c.backgrounds.sidebar, fg = c.diagnostics.error },
    BufferAlternateHINT    = { bg = c.backgrounds.sidebar, fg = c.diagnostics.hint },
    BufferAlternateINFO    = { bg = c.backgrounds.sidebar, fg = c.diagnostics.info },
    BufferAlternateIndex   = { bg = c.backgrounds.sidebar, fg = c.diagnostics.info },
    BufferAlternateMod     = { bg = c.backgrounds.sidebar, fg = c.diagnostics.warning },
    BufferAlternateSign    = { bg = c.backgrounds.sidebar, fg = c.diagnostics.info },
    BufferAlternateTarget  = { bg = c.backgrounds.sidebar, fg = c.ui.attention },
    BufferAlternateWARN    = { bg = c.backgrounds.sidebar, fg = c.diagnostics.warning },
    BufferCurrent          = { bg = c.backgrounds.normal, fg = c.foregrounds.normal },
    BufferCurrentADDED     = { bg = c.backgrounds.normal, fg = c.git.add },
    BufferCurrentCHANGED   = { bg = c.backgrounds.normal, fg = c.git.change },
    BufferCurrentDELETED   = { bg = c.backgrounds.normal, fg = c.git.delete },
    BufferCurrentERROR     = { bg = c.backgrounds.normal, fg = c.diagnostics.error },
    BufferCurrentHINT      = { bg = c.backgrounds.normal, fg = c.diagnostics.hint },
    BufferCurrentINFO      = { bg = c.backgrounds.normal, fg = c.diagnostics.info },
    BufferCurrentIndex     = { bg = c.backgrounds.normal, fg = c.diagnostics.info },
    BufferCurrentMod       = { bg = c.backgrounds.normal, fg = c.diagnostics.warning },
    BufferCurrentSign      = { bg = c.backgrounds.normal, fg = c.backgrounds.normal },
    BufferCurrentTarget    = { bg = c.backgrounds.normal, fg = c.ui.attention },
    BufferCurrentWARN      = { bg = c.backgrounds.normal, fg = c.diagnostics.warning },
    BufferInactive         = { bg = Util.blend_bg(c.backgrounds.highlight, 0.4), fg = Util.blend_bg(c.foregrounds.comment, 0.8) },
    BufferInactiveADDED    = { bg = Util.blend_bg(c.backgrounds.highlight, 0.4), fg = Util.blend_bg(c.git.add, 0.8) },
    BufferInactiveCHANGED  = { bg = Util.blend_bg(c.backgrounds.highlight, 0.4), fg = Util.blend_bg(c.git.change, 0.8) },
    BufferInactiveDELETED  = { bg = Util.blend_bg(c.backgrounds.highlight, 0.4), fg = Util.blend_bg(c.git.delete, 0.8) },
    BufferInactiveERROR    = { bg = Util.blend_bg(c.backgrounds.highlight, 0.4), fg = Util.blend_bg(c.diagnostics.error, 0.8) },
    BufferInactiveHINT     = { bg = Util.blend_bg(c.backgrounds.highlight, 0.4), fg = Util.blend_bg(c.diagnostics.hint, 0.8) },
    BufferInactiveINFO     = { bg = Util.blend_bg(c.backgrounds.highlight, 0.4), fg = Util.blend_bg(c.diagnostics.info, 0.8) },
    BufferInactiveIndex    = { bg = Util.blend_bg(c.backgrounds.highlight, 0.4), fg = c.foregrounds.comment },
    BufferInactiveMod      = { bg = Util.blend_bg(c.backgrounds.highlight, 0.4), fg = Util.blend_bg(c.diagnostics.warning, 0.8) },
    BufferInactiveSign     = { bg = Util.blend_bg(c.backgrounds.highlight, 0.4), fg = c.backgrounds.normal },
    BufferInactiveTarget   = { bg = Util.blend_bg(c.backgrounds.highlight, 0.4), fg = c.ui.attention },
    BufferInactiveWARN     = { bg = Util.blend_bg(c.backgrounds.highlight, 0.4), fg = Util.blend_bg(c.diagnostics.warning, 0.8) },
    BufferOffset           = { bg = c.backgrounds.statusline, fg = c.foregrounds.comment },
    BufferTabpageFill      = { bg = Util.blend_bg(c.backgrounds.highlight, 0.8), fg = c.foregrounds.comment },
    BufferTabpages         = { bg = c.backgrounds.statusline, fg = c.none },
    BufferVisible          = { bg = c.backgrounds.statusline, fg = c.foregrounds.normal },
    BufferVisibleADDED     = { bg = c.backgrounds.statusline, fg = c.git.add },
    BufferVisibleCHANGED   = { bg = c.backgrounds.statusline, fg = c.git.change },
    BufferVisibleDELETED   = { bg = c.backgrounds.statusline, fg = c.git.delete },
    BufferVisibleERROR     = { bg = c.backgrounds.statusline, fg = c.diagnostics.error },
    BufferVisibleHINT      = { bg = c.backgrounds.statusline, fg = c.diagnostics.hint },
    BufferVisibleINFO      = { bg = c.backgrounds.statusline, fg = c.diagnostics.info },
    BufferVisibleIndex     = { bg = c.backgrounds.statusline, fg = c.diagnostics.info },
    BufferVisibleMod       = { bg = c.backgrounds.statusline, fg = c.diagnostics.warning },
    BufferVisibleSign      = { bg = c.backgrounds.statusline, fg = c.diagnostics.info },
    BufferVisibleTarget    = { bg = c.backgrounds.statusline, fg = c.ui.attention },
    BufferVisibleWARN      = { bg = c.backgrounds.statusline, fg = c.diagnostics.warning },
  }
end

return M
