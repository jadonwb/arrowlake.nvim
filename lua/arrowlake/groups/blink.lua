local M = {}

M.url = "https://github.com/Saghen/blink.cmp"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    BlinkCmpDoc                 = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpDocBorder           = { fg = c.border_color, bg = c.bg_float },
    BlinkCmpGhostText           = { fg = c.terminal_black },
    BlinkCmpKindCodeium         = { fg = c.ai, bg               = c.none },
    BlinkCmpKindCopilot         = { fg = c.ai, bg               = c.none },
    BlinkCmpKindDefault         = { fg = c.fg_dark, bg          = c.none },
    BlinkCmpKindSupermaven      = { fg = c.ai, bg               = c.none },
    BlinkCmpKindTabNine         = { fg = c.ai, bg               = c.none },
    BlinkCmpLabel               = { fg = c.fg, bg               = c.none },
    BlinkCmpLabelDeprecated     = { fg = c.fg_gutter, bg        = c.none, strikethrough = true },
    BlinkCmpLabelMatch          = { fg = c.secondary, bg            = c.none },
    BlinkCmpMenu                = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpMenuBorder          = { fg = c.border_color, bg = c.bg_float },
    BlinkCmpSignatureHelp       = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpSignatureHelpBorder = { fg = c.border_color, bg = c.bg_float },
  }

  require("arrowlake.groups.kinds").kinds(ret, "BlinkCmpKind%s")
  return ret
end

return M
