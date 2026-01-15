local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@type arrowlake.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    FlashBackdrop = { fg = c.comment },
    FlashLabel    = { bg = c.attention, bold = true, fg = c.fg },
  }
end

return M
