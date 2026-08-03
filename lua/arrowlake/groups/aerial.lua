local M = {}

M.url = "https://github.com/stevearc/aerial.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    AerialNormal = { fg = c.foregrounds.normal, bg = c.none },
    AerialGuide  = { fg = c.foregrounds.indent },
    AerialLine   = "LspInlayHint",
  }
  require("arrowlake.groups.kinds").kinds(ret, "Aerial%sIcon")
  return ret
end

return M
