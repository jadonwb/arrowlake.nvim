local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/romgrk/barbar.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  return {
    BufferAlternate        = { bg = c.bg_darker, fg = c.fg },
    BufferAlternateADDED   = { bg = c.bg_darker, fg = c.git.add },
    BufferAlternateCHANGED = { bg = c.bg_darker, fg = c.git.change },
    BufferAlternateDELETED = { bg = c.bg_darker, fg = c.git.delete },
    BufferAlternateERROR   = { bg = c.bg_darker, fg = c.error },
    BufferAlternateHINT    = { bg = c.bg_darker, fg = c.hint },
    BufferAlternateINFO    = { bg = c.bg_darker, fg = c.info },
    BufferAlternateIndex   = { bg = c.bg_darker, fg = c.info },
    BufferAlternateMod     = { bg = c.bg_darker, fg = c.warning },
    BufferAlternateSign    = { bg = c.bg_darker, fg = c.info },
    BufferAlternateTarget  = { bg = c.bg_darker, fg = c.attention },
    BufferAlternateWARN    = { bg = c.bg_darker, fg = c.warning },
    BufferCurrent          = { bg = c.bg, fg = c.fg },
    BufferCurrentADDED     = { bg = c.bg, fg = c.git.add },
    BufferCurrentCHANGED   = { bg = c.bg, fg = c.git.change },
    BufferCurrentDELETED   = { bg = c.bg, fg = c.git.delete },
    BufferCurrentERROR     = { bg = c.bg, fg = c.error },
    BufferCurrentHINT      = { bg = c.bg, fg = c.hint },
    BufferCurrentINFO      = { bg = c.bg, fg = c.info },
    BufferCurrentIndex     = { bg = c.bg, fg = c.info },
    BufferCurrentMod       = { bg = c.bg, fg = c.warning },
    BufferCurrentSign      = { bg = c.bg, fg = c.bg },
    BufferCurrentTarget    = { bg = c.bg, fg = c.attention },
    BufferCurrentWARN      = { bg = c.bg, fg = c.warning },
    BufferInactive         = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.comment, 0.8) },
    BufferInactiveADDED    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.git.add, 0.8) },
    BufferInactiveCHANGED  = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.git.change, 0.8) },
    BufferInactiveDELETED  = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.git.delete, 0.8) },
    BufferInactiveERROR    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.error, 0.8) },
    BufferInactiveHINT     = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.hint, 0.8) },
    BufferInactiveINFO     = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.info, 0.8) },
    BufferInactiveIndex    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = c.comment },
    BufferInactiveMod      = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.warning, 0.8) },
    BufferInactiveSign     = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = c.bg },
    BufferInactiveTarget   = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = c.attention },
    BufferInactiveWARN     = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.warning, 0.8) },
    BufferOffset           = { bg = c.status.bg, fg = c.comment },
    BufferTabpageFill      = { bg = Util.blend_bg(c.bg_highlight, 0.8), fg = c.comment },
    BufferTabpages         = { bg = c.status.bg, fg = c.none },
    BufferVisible          = { bg = c.status.bg, fg = c.fg },
    BufferVisibleADDED     = { bg = c.status.bg, fg = c.git.add },
    BufferVisibleCHANGED   = { bg = c.status.bg, fg = c.git.change },
    BufferVisibleDELETED   = { bg = c.status.bg, fg = c.git.delete },
    BufferVisibleERROR     = { bg = c.status.bg, fg = c.error },
    BufferVisibleHINT      = { bg = c.status.bg, fg = c.hint },
    BufferVisibleINFO      = { bg = c.status.bg, fg = c.info },
    BufferVisibleIndex     = { bg = c.status.bg, fg = c.info },
    BufferVisibleMod       = { bg = c.status.bg, fg = c.warning },
    BufferVisibleSign      = { bg = c.status.bg, fg = c.info },
    BufferVisibleTarget    = { bg = c.status.bg, fg = c.attention },
    BufferVisibleWARN      = { bg = c.status.bg, fg = c.warning },
  }
end

return M
