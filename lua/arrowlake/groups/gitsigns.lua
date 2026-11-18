local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    GitSignsAdd    = { fg = c.git.add }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.git.change }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.git.delete }, -- diff mode: Deleted line |diff.txt|

    -- Word highlights layer a stronger tint over the preview's line background.
    GitSignsAddInline          = { bg = c.diff.text },
    GitSignsChangeInline       = { link = "GitSignsAddInline" },
    GitSignsDeleteInline       = { bg = c.diff.delete_text },
    GitSignsDeleteVirtLnInLine = { link = "GitSignsDeleteInline" },
  }
end

return M
