local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/jadonwb/arrowlake.nvim"

-- Design vocabulary for editor chrome built outside plugins (IDE panels, volt
-- dashboards, popups, statusline chips). Roles, not colours: purple is
-- structure, cyan is focus, magenta is attention, orange is AI.

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  local panel = c.backgrounds.panel
  local raised = c.backgrounds.float
  local hi = c.backgrounds.highlight

  local function soft(color, bg)
    return { fg = color, bg = Util.blend_bg(color, 0.14, bg or panel) }
  end
  local function solid(color)
    return { fg = c.bg, bg = color, bold = true }
  end

  local accents = {
    Purple = c.purple,
    Blue = c.blue,
    Cyan = c.cyan,
    Magenta = c.magenta,
    Orange = c.orange,
    Green = c.green,
    Yellow = c.yellow,
    Red = c.red,
  }

  -- stylua: ignore
  local ret = {
    -- Surfaces
    NvPanel          = { fg = c.foregrounds.normal, bg = panel },
    NvPanelBorder    = { fg = panel, bg = panel },
    NvRaised         = { fg = c.foregrounds.normal, bg = raised },
    NvRaisedBorder   = { fg = raised, bg = raised },
    NvCursorLine     = { bg = hi },
    NvFocusEdge      = { fg = c.focus, bg = hi },
    NvBackdrop       = { bg = c.backgrounds.darker },

    -- Text roles
    NvTitle          = { fg = c.foregrounds.normal, bold = true },
    NvIcon           = { fg = c.primary },
    NvLabel          = { fg = c.foregrounds.darker },
    NvMuted          = { fg = c.foregrounds.muted },
    NvDim            = { fg = c.foregrounds.darker },
    NvValue          = { fg = c.foregrounds.normal },
    NvPath           = { fg = c.foregrounds.darker },
    NvFile           = { fg = c.foregrounds.normal },
    NvRule           = { fg = Util.blend_bg(c.fg_gutter, 0.45, panel) },
    NvKey            = { fg = c.focus, bg = hi },
    NvAI             = { fg = c.ui.ai },
    NvSpinner        = { fg = c.ui.ai, bold = true },
    NvUnread         = { fg = c.ui.attention },

    -- Meters (volt progressbar / typr style `┃` bars)
    NvMeterTrack     = { fg = Util.blend_bg(c.fg_gutter, 0.5, panel) },

    -- Tab strips (bottom panel, dashboard selectors)
    NvTabActive      = { fg = c.primary, bg = panel, bold = true, underline = true, sp = c.primary },
    NvTabInactive    = { fg = c.foregrounds.muted, bg = panel },
    NvTabCount       = { fg = c.foregrounds.darker, bg = panel },
    NvTabStrip       = { fg = c.foregrounds.muted, bg = panel },

    -- Popups (hover, signature, diagnostics)
    NvPopup          = { fg = c.foregrounds.normal, bg = raised },
    NvPopupBorder    = { fg = raised, bg = raised },
    NvPopupRule      = { fg = Util.blend_bg(c.orange, 0.7, raised), bg = raised },
    NvPopupTitle     = { fg = c.bg, bg = c.primary, bold = true },
  }

  -- Statusline pieces (lualine inline groups), all on the statusline surface.
  local st = c.backgrounds.statusline
  ret.NvSt = { fg = c.foregrounds.darker, bg = st }
  ret.NvStIcon = { fg = c.secondary, bg = st }
  ret.NvStPath = { fg = c.foregrounds.darker, bg = st }
  ret.NvStName = { fg = c.foregrounds.normal, bg = st, bold = true }
  ret.NvStModified = { fg = c.orange, bg = st }
  ret.NvStBranch = { fg = c.foregrounds.dark, bg = st }
  ret.NvStMuted = { fg = c.foregrounds.muted, bg = st }
  ret.NvStPosIcon = { fg = c.bg, bg = c.focus, bold = true }
  ret.NvStPos = { fg = c.focus, bg = hi, bold = true }
  ret.NvStPosCapL = { fg = c.focus, bg = st }
  ret.NvStPosCapR = { fg = hi, bg = st }

  for name, color in pairs(accents) do
    ret["NvChip" .. name] = solid(color)
    ret["NvChip" .. name .. "Soft"] = soft(color)
    ret["NvMeter" .. name] = { fg = color }
    ret["Nv" .. name] = { fg = color }
  end
  ret.NvChipMuted = { fg = c.foregrounds.darker, bg = hi }

  -- Statusline mode chips follow the theme's mode colours.
  for mode, color in pairs(c.status) do
    if mode ~= "inactive" then
      local name = mode:sub(1, 1):upper() .. mode:sub(2)
      ret["NvMode" .. name] = solid(color)
      ret["NvModeCap" .. name] = { fg = color, bg = c.backgrounds.statusline }
    end
  end

  return ret
end

return M
