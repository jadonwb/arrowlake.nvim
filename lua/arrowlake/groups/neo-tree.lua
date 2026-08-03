local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  return {
    NeoTreeDimText             = { fg = c.foregrounds.muted },
    NeoTreeFileName            = { fg = c.foregrounds.sidebar },
    NeoTreeGitModified         = { fg = c.git.change },
    NeoTreeGitStaged           = { fg = c.git.add },
    NeoTreeGitUntracked        = { fg = c.git.add },
    NeoTreeNormal              = { fg = c.foregrounds.sidebar, bg = c.backgrounds.sidebar },
    NeoTreeNormalNC            = { fg = c.foregrounds.sidebar, bg = c.backgrounds.sidebar },
    NeoTreeTabActive           = { fg = c.border.active_title, bg = c.backgrounds.sidebar, bold = true },
    NeoTreeTabInactive         = { fg = c.border.title, bg = c.backgrounds.sidebar },
    NeoTreeTabSeparatorActive  = { fg = c.border.color, bg = c.backgrounds.sidebar },
    NeoTreeTabSeparatorInactive= { fg = c.border.split, bg = c.backgrounds.sidebar },
  }
end

return M
