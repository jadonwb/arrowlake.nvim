local util = require("arrowlake.util")

local M = {}

---@param colors ColorScheme
---@return string
function M.generate(colors)
  local style = colors._style or "dark"

  -- WezTerm paints the current search match with selection_bg. The light theme
  -- uses a magenta tint so it stands out from visual selection.
  local selection_bg = style == "light" and util.blend_bg(colors.magenta, 0.47, colors.bg)
    or colors.backgrounds.visual

  local ansi = {
    colors.terminal.black,
    colors.terminal.red,
    colors.terminal.green,
    colors.terminal.yellow,
    colors.terminal.blue,
    colors.terminal.magenta,
    colors.terminal.cyan,
    colors.terminal.white,
  }

  local brights = {
    colors.terminal.black_bright,
    colors.terminal.red_bright,
    colors.terminal.green_bright,
    colors.terminal.yellow_bright,
    colors.terminal.blue_bright,
    colors.terminal.magenta_bright,
    colors.terminal.cyan_bright,
    colors.terminal.white_bright,
  }

  local function list(values)
    local parts = {}
    for _, value in ipairs(values) do
      parts[#parts + 1] = ('    "%s"'):format(value)
    end
    return "[\n" .. table.concat(parts, ",\n") .. "\n  ]"
  end

  return ([[
{
  "foreground": "%s",
  "background": "%s",
  "cursor_bg": "%s",
  "cursor_border": "%s",
  "cursor_fg": "%s",
  "selection_bg": "%s",
  "selection_fg": "%s",
  "split": "%s",
  "compose_cursor": "%s",
  "scrollbar_thumb": "%s",
  "ansi": %s,
  "brights": %s,
  "tab_bar": {
    "inactive_tab_edge": "%s",
    "background": "%s",
    "active_tab": {
      "fg_color": "%s",
      "bg_color": "%s"
    },
    "inactive_tab": {
      "fg_color": "%s",
      "bg_color": "%s"
    },
    "inactive_tab_hover": {
      "fg_color": "%s",
      "bg_color": "%s"
    },
    "new_tab_hover": {
      "fg_color": "%s",
      "bg_color": "%s",
      "intensity": "Bold"
    },
    "new_tab": {
      "fg_color": "%s",
      "bg_color": "%s"
    }
  },
  "copy_mode_inactive_highlight_bg": {
    "Color": "%s"
  },
  "copy_mode_inactive_highlight_fg": {
    "Color": "%s"
  }
}
]]):format(
    colors.fg,
    colors.bg,
    colors.fg,
    colors.fg,
    colors.bg,
    selection_bg,
    colors.fg,
    colors.border.split,
    colors.focus,
    colors.backgrounds.highlight,
    list(ansi),
    list(brights),
    colors.border.split,
    colors.bg,
    colors.primary,
    colors.bg,
    colors.foregrounds.muted,
    colors.bg,
    colors.focus,
    colors.bg,
    colors.focus,
    colors.bg,
    colors.foregrounds.muted,
    colors.bg,
    colors.backgrounds.visual,
    colors.fg
  )
end

return M
