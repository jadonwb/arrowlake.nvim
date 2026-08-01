local Util = require("arrowlake.util")

local bg = "#0D0C25"
local bg_dark = "#09081a"
local bg_darker = "#070614"

local fg = "#bec8e8"
local fg_dark = "#7e85b8"
local fg_darker = "#5c6296"
local fg_gutter = "#312e55"

local selection = "#161440"

local red = "#E50050"
local orange = "#FB9B00"
local yellow = "#FFD888"
local green = "#2A8A6B"
local blue = "#3F3BF5"
local purple = "#834CCF"
local magenta = "#D91C87"
local cyan = "#33D4B4"

local primary = blue
local secondary = "#5352CD"
local focus = orange

local operator = "#9AC1E5"

---@type arrowlake.Palette
local M = {
  bg = bg,
  bg_dark = bg_dark,
  bg_darker = bg_darker,
  bg_code = bg_dark,
  bg_notification = bg_dark,
  bg_highlight = selection,
  bg_visual = selection,
  bg_hover = fg_gutter,
  bg_search = fg_gutter,
  bg_search_current = magenta,
  bg_active_parameter = selection,
  bg_sidebar = bg_darker,
  bg_float = bg_darker,
  fg = fg,
  fg_darker = fg_darker,
  fg_dark = fg_dark,
  fg_gutter = fg_gutter,
  fg_sidebar = fg_darker,
  comment = fg_darker,
  muted = fg_darker,
  black = bg_darker,
  terminal_black = fg_gutter,
  border = bg_dark,
  border_color = primary,
  border_subtle = fg_darker,
  primary = primary,
  secondary = secondary,
  selection = selection,
  red = red,
  orange = orange,
  yellow = yellow,
  green = green,
  blue = blue,
  purple = purple,
  magenta = magenta,
  cyan = cyan,
  title = primary,
  keyword = magenta,
  macro = cyan,
  string = green,
  string_doc = yellow,
  string_escape = magenta,
  md_inline = yellow,
  parameter = yellow,
  variable = fg,
  member = fg_dark,
  constant = orange,
  type = secondary,
  type_builtin = Util.blend_bg(secondary, 0.75, bg),
  functions = primary,
  functions_builtin = Util.blend_bg(primary, 0.75, bg),
  constructor = magenta,
  operator = operator,
  punctuation = fg_dark,
  markup = orange,
  link = cyan,
  focus = focus,
  error = red,
  warning = orange,
  info = secondary,
  hint = cyan,
  success = green,
  todo = secondary,
  trace = purple,
  attention = magenta,
  ai = cyan,
  rainbow = { blue, yellow, magenta, green, cyan, red, purple, orange },
  git = {
    add = green,
    change = yellow,
    delete = red,
    ignore = fg_darker,
  },
  diff = {
    add = Util.blend_bg(green, 0.22, bg),
    change = Util.blend_bg(yellow, 0.22, bg),
    delete = Util.blend_bg(red, 0.25, bg),
    text = Util.blend_bg(fg_dark, 0.15, bg),
  },
  terminal = {
    black = bg_darker,
    black_bright = fg_gutter,
    red = red,
    red_bright = Util.brighten(red),
    green = green,
    green_bright = Util.brighten(green),
    yellow = yellow,
    yellow_bright = Util.brighten(yellow),
    blue = blue,
    blue_bright = Util.brighten(blue),
    magenta = magenta,
    magenta_bright = Util.brighten(magenta),
    cyan = cyan,
    cyan_bright = Util.brighten(cyan),
    white = fg_darker,
    white_bright = fg,
  },
  status = {
    bg = bg_dark,
    normal = primary,
    insert = green,
    command = orange,
    visual = magenta,
    replace = red,
    terminal = cyan,
  },
}

return M
