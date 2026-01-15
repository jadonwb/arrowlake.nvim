local M = {}

M.url = "https://github.com/ggandor/leap.nvim"

---@type arrowlake.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    LeapMatch          = { bg = c.attention, fg = c.fg, bold = true },
    LeapLabel          = { fg = c.attention, bold = true },
    LeapBackdrop       = { fg = c.comment },
  }
end

return M
