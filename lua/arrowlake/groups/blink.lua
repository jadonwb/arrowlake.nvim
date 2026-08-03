local M = {}

M.url = "https://github.com/Saghen/blink.cmp"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    BlinkCmpDoc                 = { fg = c.foregrounds.normal, bg               = c.backgrounds.float },
    BlinkCmpDocBorder           = { fg = c.border.color, bg = c.backgrounds.float },
    BlinkCmpGhostText           = { fg = c.foregrounds.muted },
    BlinkCmpKindCodeium         = { fg = c.ui.ai, bg               = c.none },
    BlinkCmpKindCopilot         = { fg = c.ui.ai, bg               = c.none },
    BlinkCmpKindDefault         = { fg = c.foregrounds.dark, bg          = c.none },
    BlinkCmpKindSupermaven      = { fg = c.ui.ai, bg               = c.none },
    BlinkCmpKindTabNine         = { fg = c.ui.ai, bg               = c.none },
    BlinkCmpLabel               = { fg = c.foregrounds.normal, bg               = c.none },
    BlinkCmpLabelDeprecated     = { fg = c.foregrounds.muted, bg        = c.none, strikethrough = true },
    BlinkCmpLabelMatch          = { fg = c.focus, bg            = c.none },
    BlinkCmpMenu                = { fg = c.foregrounds.normal, bg               = c.backgrounds.float },
    BlinkCmpMenuBorder          = { fg = c.border.color, bg = c.backgrounds.float },
    BlinkCmpSignatureHelp       = { fg = c.foregrounds.normal, bg               = c.backgrounds.float },
    BlinkCmpSignatureHelpBorder = { fg = c.border.color, bg = c.backgrounds.float },
  }

  require("arrowlake.groups.kinds").kinds(ret, "BlinkCmpKind%s")
  return ret
end

return M
