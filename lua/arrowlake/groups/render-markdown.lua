local Util = require("arrowlake.util")

local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

---@type arrowlake.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    RenderMarkdownBullet    = { fg = c.markup },
    RenderMarkdownCode      = { bg = c.bg_code },
    RenderMarkdownDash      = { fg = c.markup },
    RenderMarkdownTableHead = { fg = c.primary },
    RenderMarkdownTableRow  = { fg = c.secondary },
    RenderMarkdownCodeInline = "@markup.raw.markdown_inline"
  }
  for i, color in ipairs(c.rainbow) do
    ret["RenderMarkdownH" .. i .. "Bg"] = { bg = Util.blend_bg(color, 0.1) }
    ret["RenderMarkdownH" .. i .. "Fg"] = { fg = color, bold = true }
  end
  return ret
end

return M
