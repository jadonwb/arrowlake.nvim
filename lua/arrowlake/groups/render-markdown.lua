local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    RenderMarkdownBullet    = { fg = c.syntax.markup },
    RenderMarkdownCode      = { bg = c.backgrounds.code },
    RenderMarkdownDash      = { fg = c.syntax.markup },
    RenderMarkdownTableHead = { fg = c.ui.header },
    RenderMarkdownTableRow  = { fg = c.ui.footer },
    RenderMarkdownCodeInline = "@markup.raw.markdown_inline"
  }
  for i, color in ipairs(c.rainbow) do
    ret["RenderMarkdownH" .. i .. "Bg"] = { bg = Util.blend_bg(color, 0.1) }
    ret["RenderMarkdownH" .. i .. "Fg"] = { fg = color, bold = true }
  end
  return ret
end

return M
