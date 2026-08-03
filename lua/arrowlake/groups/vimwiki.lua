local M = {}

M.url = "https://github.com/vimwiki/vimwiki"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    VimwikiLink = { fg = c.syntax.link, bg = c.none },
    VimwikiHeaderChar = { fg = c.focus, bg = c.none },
    VimwikiHR = { fg = c.focus, bg = c.none },
    VimwikiList = { fg = c.syntax.operator, bg = c.none },
    VimwikiTag = { fg = c.diagnostics.attention, bg = c.none },
    VimwikiMarkers = { fg = c.syntax.operator, bg = c.none },
  }
  for i, color in ipairs(c.rainbow) do
    ret["VimwikiHeader" .. i] = { fg = color, bg = c.none, bold = true }
  end
  return ret
end

return M
