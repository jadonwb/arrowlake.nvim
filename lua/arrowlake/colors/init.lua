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

  -- 6. Style overrides for sidebar, float, and statusline backgrounds.
  -- Each can be: nil (keep mapping default), "transparent" (use bg),
  -- "normal" (use bg_dark), or "darker" (use bg_darker).
  -- transparency now only controls the main Normal bg (handled in groups/base.lua).

  -- statusline
  if opts.styles.statusline == "transparent" then
    colors.status.bg = colors.bg
  elseif opts.styles.statusline == "normal" then
    colors.status.bg = colors.bg_dark
  elseif opts.styles.statusline == "darker" then
    colors.status.bg = colors.bg_darker
  end

  -- float
  if opts.styles.float == "transparent" then
    colors.bg_float = colors.bg
  elseif opts.styles.float == "normal" then
    colors.bg_float = colors.bg_dark
  elseif opts.styles.float == "darker" then
    colors.bg_float = colors.bg_darker
  end

  -- sidebar
  if opts.styles.sidebar == "transparent" then
    colors.bg_sidebar = colors.bg
  elseif opts.styles.sidebar == "normal" then
    colors.bg_sidebar = colors.bg_dark
  elseif opts.styles.sidebar == "darker" then
    colors.bg_sidebar = colors.bg_darker
  end

  return colors, opts
end

return M
