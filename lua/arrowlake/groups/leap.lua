local M = {}

M.url = "https://github.com/ggandor/leap.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    LeapMatch          = { bg = c.diagnostics.attention, fg = c.foregrounds.normal, bold = true },
    LeapLabel          = { fg = c.diagnostics.attention, bold = true },
    LeapBackdrop       = { fg = c.foregrounds.comment },
  }
end

return M
