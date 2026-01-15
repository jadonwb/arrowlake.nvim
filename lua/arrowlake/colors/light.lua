local M = {}

local Schema = require("arrowlake.colors.schema")
local Util = require("arrowlake.util")

local bg = "#ebe0cf"
local bg_dark = "#e3d7c7"
local bg_darker = "#DED0BF"
local selection = "#d4c6b3"

local fg = "#54473f"
local fg_dark = "#6c5e55"
local fg_darker = "#87786c"
local fg_gutter = "#ad9b88"

local red = "#BC495D"
local orange = "#C88478"
local yellow = "#AD8A5A"
local green = "#4E7469"
local blue = "#4A74A8"
local purple = "#6660AF"
local magenta = "#C16C90"
local cyan = "#56AEA9"

local primary = purple
local secondary = blue
local focus = cyan

local operator = "#6a8b89"

M = Schema.new({
  bg = bg,
  bg_dark = bg_dark,
  bg_darker = bg_darker,
  bg_code = bg_dark,
  bg_notification = bg_dark,
  bg_highlight = selection,
  bg_visual = selection,
  bg_hover = selection,
  bg_search = selection,
  bg_search_current = Util.blend_bg(magenta, 0.45, bg),
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
  string_doc = green,
  string_escape = magenta,
  md_inline = green,
  parameter = orange,
  variable = fg,
  member = fg_dark,
  constant = yellow,
  type = secondary,
  type_builtin = Util.blend_bg(secondary, 0.85, bg),
  functions = primary,
  constructor = magenta,
  operator = operator,
  punctuation = fg_dark,
  markup = magenta,
  link = orange,
  focus = focus,
  error = red, --same
  warning = yellow, --same
  info = cyan, -- TODO: make part of lsp table
  hint = magenta, -- same
  success = green, -- same
  todo = secondary, -- make part of todo/comment table
  trace = purple, -- i guess add to diagnostic/lsp table? make it cyan or magenta?
  attention = magenta,
  ai = orange,
  rainbow = { purple, blue, green, yellow, magenta, cyan, red, orange },
  git = {
    add = green,
    change = yellow,
    delete = red,
    ignore = fg_darker,
  },
  diff = {
    add = Util.blend_bg(green, 0.15, bg),
    change = Util.blend_bg(yellow, 0.22, bg),
    delete = Util.blend_bg(red, 0.15, bg),
    text = Util.blend_bg(green, 0.26, bg),
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
    command = yellow,
    visual = magenta,
    replace = red,
    terminal = cyan,
  },
}, "light")

return M
