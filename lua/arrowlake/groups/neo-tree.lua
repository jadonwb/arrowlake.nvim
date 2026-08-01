local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    NeoTreeDimText             = { fg = c.fg_gutter },
    NeoTreeFileName            = { fg = c.fg_sidebar },
    NeoTreeGitModified         = { fg = c.git.change },
    NeoTreeGitStaged           = { fg = c.git.add },
    NeoTreeGitUntracked        = { fg = c.git.add },
    NeoTreeNormal              = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeNormalNC            = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeTabActive           = { fg = c.focus, bg = c.bg_sidebar, bold = true },
    NeoTreeTabInactive         = { fg = c.title, bg = bg_sidebar },
    NeoTreeTabSeparatorActive  = { fg = c.border_color, bg = c.bg_sidebar },
    NeoTreeTabSeparatorInactive= { fg = c.bg, bg = bg_sidebar },
  }
end

return M
