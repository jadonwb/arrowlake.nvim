local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CmpDocumentation       = { fg = c.foregrounds.normal, bg = c.backgrounds.float },
    CmpDocumentationBorder = { fg = c.border.color, bg = c.backgrounds.float },
    CmpGhostText           = { fg = c.foregrounds.muted },
    CmpItemAbbr            = { fg = c.foregrounds.normal, bg = c.none },
    CmpItemAbbrDeprecated  = { fg = c.foregrounds.muted, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch       = { fg = c.focus, bg = c.none },
    CmpItemAbbrMatchFuzzy  = { fg = c.focus, bg = c.none },
    CmpItemKindCodeium     = { fg = c.ui.ai, bg = c.none },
    CmpItemKindCopilot     = { fg = c.ui.ai, bg = c.none },
    CmpItemKindSupermaven  = { fg = c.ui.ai, bg = c.none },
    CmpItemKindDefault     = { fg = c.foregrounds.dark, bg = c.none },
    CmpItemKindTabNine     = { fg = c.ui.ai, bg = c.none },
    CmpItemMenu            = { fg = c.foregrounds.comment, bg = c.none },
  }

  require("arrowlake.groups.kinds").kinds(ret, "CmpItemKind%s")
  return ret
end

return M
