local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  local ret = {
    NoiceCmdlineIconInput          = { fg = c.ui.icon },
    NoiceCmdlineIconLua            = { fg = c.ui.icon },
    NoiceCmdlinePopupBorderInput   = { fg = c.border.active },
    NoiceCmdlinePopupBorderLua     = { fg = c.border.active },
    NoiceCmdlinePopupTitleInput    = { fg = c.focus },
    NoiceCmdlinePopupTitleLua      = { fg = c.ui.label },
    NoiceCompletionItemKindDefault = { fg = c.foregrounds.dark, bg = c.none },
  }
  require("arrowlake.groups.kinds").kinds(ret, "NoiceCompletionItemKind%s")
  return ret
end

return M
