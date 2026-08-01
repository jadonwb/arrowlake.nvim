local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
function M.get(c)
  -- stylua: ignore
  local ret = {
    NoiceCmdlineIconInput          = { fg = c.focus },
    NoiceCmdlineIconLua            = { fg = c.secondary },
    NoiceCmdlinePopupBorderInput   = { fg = c.focus },
    NoiceCmdlinePopupBorderLua     = { fg = c.secondary },
    NoiceCmdlinePopupTitleInput    = { fg = c.focus },
    NoiceCmdlinePopupTitleLua      = { fg = c.secondary },
    NoiceCompletionItemKindDefault = { fg = c.fg_dark, bg = c.none },
  }
  require("arrowlake.groups.kinds").kinds(ret, "NoiceCompletionItemKind%s")
  return ret
end

return M
