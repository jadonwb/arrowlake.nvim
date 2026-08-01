local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CmpDocumentation       = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_color, bg = c.bg_float },
    CmpGhostText           = { fg = c.terminal_black },
    CmpItemAbbr            = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated  = { fg = c.fg_gutter, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch       = { fg = c.secondary, bg = c.none },
    CmpItemAbbrMatchFuzzy  = { fg = c.secondary, bg = c.none },
    CmpItemKindCodeium     = { fg = c.ai, bg = c.none },
    CmpItemKindCopilot     = { fg = c.ai, bg = c.none },
    CmpItemKindSupermaven  = { fg = c.ai, bg = c.none },
    CmpItemKindDefault     = { fg = c.fg_dark, bg = c.none },
    CmpItemKindTabNine     = { fg = c.ai, bg = c.none },
    CmpItemMenu            = { fg = c.comment, bg = c.none },
  }

  require("arrowlake.groups.kinds").kinds(ret, "CmpItemKind%s")
  return ret
end

return M
