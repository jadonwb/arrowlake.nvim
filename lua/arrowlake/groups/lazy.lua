local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/folke/lazy.nvim"

-- Lazy's manager drawn like the editor's own dashboards (groups/nv.lua): the
-- raised surface, the title and active tab as a solid primary chip, the other
-- tabs as muted chips, keys in the focus-on-highlight key style, section
-- headings bold. Load reasons keep a colour each but are softened so the list
-- reads as text, not a rainbow.

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  local raised = c.backgrounds.float
  local hi = c.backgrounds.highlight
  local function soft(color)
    return Util.blend_bg(color, 0.8, raised)
  end

  -- stylua: ignore
  return {
    LazyNormal            = { fg = c.foregrounds.normal, bg = raised },
    LazyBackdrop          = { bg = "#000000" }, -- shared modal dim

    -- Header: title chip, tab chips
    LazyH1                = { fg = c.bg, bg = c.primary, bold = true },
    LazyButtonActive      = { fg = c.bg, bg = c.primary, bold = true },
    LazyButton            = { fg = c.foregrounds.darker, bg = hi },
    LazySpecial           = { fg = c.focus },              -- key hints, bullets, ( )
    LazyH2                = { fg = c.foregrounds.normal, bold = true },

    -- Text roles
    LazyBold              = { bold = true },
    LazyItalic            = { italic = true },
    LazyComment           = { fg = c.foregrounds.darker },
    LazyDimmed            = { fg = c.foregrounds.muted },
    LazyProp              = { fg = c.foregrounds.darker },
    LazyValue             = { fg = c.foregrounds.normal },
    LazyDir               = { fg = c.ui.path },
    LazyUrl               = { fg = c.syntax.link, underline = true },
    LazyLocal             = { fg = c.secondary },
    LazyTaskOutput        = { fg = c.foregrounds.darker },

    -- Status
    LazyError             = { fg = c.diagnostics.error },
    LazyWarning           = { fg = c.diagnostics.warning },
    LazyInfo              = { fg = c.focus },
    LazyNoCond            = { fg = c.diagnostics.warning },
    LazyProgressDone      = { fg = c.primary, bold = true },
    LazyProgressTodo      = { fg = Util.blend_bg(c.fg_gutter, 0.5, raised) },

    -- Commits (log / update views): hash like the git dashboard
    LazyCommit            = { fg = c.purple },
    LazyCommitIssue       = { fg = c.magenta },
    LazyCommitType        = { fg = c.primary, bold = true },
    LazyCommitScope       = { fg = c.foregrounds.darker, italic = true },

    -- Load reasons
    LazyReasonStart       = { fg = soft(c.green) },
    LazyReasonPlugin      = { fg = soft(c.primary) },
    LazyReasonEvent       = { fg = soft(c.magenta) },
    LazyReasonKeys        = { fg = soft(c.focus) },
    LazyReasonCmd         = { fg = soft(c.orange) },
    LazyReasonFt          = { fg = soft(c.blue) },
    LazyReasonRequire     = { fg = soft(c.secondary) },
    LazyReasonImport      = { fg = c.foregrounds.darker },
    LazyReasonRuntime     = { fg = c.foregrounds.darker },
    LazyReasonSource      = { fg = c.foregrounds.darker },
  }
end

return M
