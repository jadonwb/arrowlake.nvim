local Util = require("arrowlake.util")

local M = {}

---@type table<string, arrowlake.Palette|fun(opts:arrowlake.Config):arrowlake.Palette>
M.styles = setmetatable({}, {
  __index = function(_, style)
    return vim.deepcopy(Util.mod("arrowlake.colors." .. style))
  end,
})

---@param opts? arrowlake.Config
---@return ColorScheme colors
---@return arrowlake.Config opts
function M.setup(opts)
  opts = require("arrowlake.config").extend(opts)

  Util.light_brightness = opts.light_brightness

  -- 1. Load base palette, hex colors
  local palette = M.styles[opts.style]
  if type(palette) == "function" then
    palette = palette(opts)
  end
  ---@cast palette arrowlake.Palette

  -- 2. Merge user's hex overrides
  if opts.colors and next(opts.colors) then
    palette = vim.tbl_deep_extend("force", palette, vim.deepcopy(opts.colors))
  end

  -- 3. Set Util defaults
  Util.bg = palette.bg
  Util.fg = palette.fg

  -- 4. Apply semantic mappings
  if palette.map then
    palette.map(palette)
    palette.map = nil -- Remove function so it doesn't break JSON cache serialization
  end

  local colors = palette

  colors.none = "NONE"
  ---@cast colors ColorScheme

  -- 5. User callback (full access to base + derived + none)
  if opts.on_colors then
    opts.on_colors(colors)
  end

  -- 6. Transparency / style overrides
  -- TODO: make transparency only control the bg, and make the individual styles toggle between transparent (bg), normal (fg_dark), and darker (fg_darker)
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

  return colors, opts
end

return M
