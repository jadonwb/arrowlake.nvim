local Util = require("arrowlake.util")

local M = {}

---@type table<string, Palette|fun(opts:arrowlake.Config):Palette>
M.styles = setmetatable({}, {
  __index = function(_, style)
    return vim.deepcopy(Util.mod("arrowlake.colors." .. style))
  end,
})

---@param opts? arrowlake.Config
function M.setup(opts)
  opts = require("arrowlake.config").extend(opts)

  Util.light_brightness = opts.light_brightness

  local palette = M.styles[opts.style]
  if type(palette) == "function" then
    palette = palette(opts) --[[@as Palette]]
  end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = palette

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  -- Global transparency: When enabled, all UI background
  -- palette values become "NONE" and cascade through every highlight group.
  -- Keeps colors.bg real for Util.blend_bg operations.
  if opts.transparent then
    colors.bg_sidebar = colors.none
    colors.bg_float = colors.none
    colors.status.bg = colors.none
  end

  if opts.styles.statusline == "normal" then
    colors.status.bg = colors.bg_dark
  end

  if opts.styles.float == "normal" then
    colors.bg_float = colors.bg_darker
  end

  if opts.styles.sidebar == "normal" then
    colors.bg_sidebar = colors.bg_darker
  end

  opts.on_colors(colors)

  return colors, opts
end

return M
