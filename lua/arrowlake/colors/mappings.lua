local M = {}

-- TODO: comment/document each item

-- TODO: make a todo comment subtable in here, or make it part of foregrounds/comment?

-- TODO: make markdown and markup and help type grouping

-- TODO: need to make groupings for winbar / tab stuff

---@param c arrowlake.Palette
function M.apply(c)
  local U = require("arrowlake.util")

  c.none = "NONE"

  -- TODO: find each direct use of bg_dark and bg_darker and come up with real semantic name for it
  -- then make a new subtable c.backgrounds.code ...
  -- ═══ UI Backgrounds ═══
  c.bg_code = c.bg_dark
  c.bg_notification = c.bg_dark
  c.bg_highlight = c.selection
  c.bg_visual = c.selection
  c.bg_hover = c.selection
  c.bg_search = c.selection
  c.bg_search_current = U.blend_bg(c.focus, 0.45, c.bg)
  c.bg_active_parameter = c.selection
  c.bg_sidebar = c.bg_darker
  c.bg_float = c.bg_darker

  -- ═══ UI Foregrounds ═══
  c.fg_sidebar = c.fg_darker
  c.comment = c.fg_darker
  c.muted = c.fg_darker
  c.black = c.bg_darker -- TODO: rename to actual purpose
  c.terminal_black = c.fg_gutter -- TODO: rename to actual purpose

  -- ═══ Borders ═══
  c.border = c.bg_dark -- # TODO: rename to split/window? c.border.split?
  c.border_color = c.primary -- # TODO: rename to border? or c.border.color?
  c.border_subtle = c.fg_darker -- rename to c.border.subtle?

  -- ═══ Syntax ═══
  c.title = c.primary
  c.keyword = c.magenta
  c.macro = c.cyan
  c.string = c.green
  c.string_doc = c.green
  c.string_escape = c.magenta
  c.md_inline = c.green
  c.parameter = c.orange
  c.variable = c.fg
  c.member = c.fg_dark
  c.constant = c.yellow
  c.type = c.secondary
  c.type_builtin = U.blend_bg(c.secondary, 0.85, c.bg)
  c.functions = c.primary
  c.functions_builtin = U.blend_bg(c.primary, 0.85, c.bg)
  c.constructor = c.magenta
  c.punctuation = c.fg_dark -- TODO?: move to fg section, or make a new semantic key for text, and put it here? or make a c.foregrounds.text,comment,linenumber,etc.?
  c.markup = c.magenta
  c.link = c.orange

  -- ═══ Diagnostics ═══
  c.error = c.red
  c.warning = c.yellow
  c.info = c.blue
  c.hint = c.cyan
  c.success = c.green
  c.todo = c.green
  c.trace = c.purple
  c.attention = c.magenta
  c.ai = c.orange

  -- ═══ Rainbow ═══
  c.rainbow = { c.purple, c.blue, c.green, c.yellow, c.magenta, c.cyan, c.red, c.orange }

  -- ═══ Git ═══
  c.git = {
    add = c.green,
    change = c.yellow,
    delete = c.red,
    ignore = c.fg_darker,
  }

  -- ═══ Diff ═══
  c.diff = {
    add = U.blend_bg(c.green, 0.15, c.bg),
    change = U.blend_bg(c.yellow, 0.22, c.bg),
    delete = U.blend_bg(c.red, 0.15, c.bg),
    text = U.blend_bg(c.green, 0.26, c.bg),
  }

  -- ═══ Terminal ═══
  c.terminal = {
    black = c.bg_darker,
    black_bright = c.fg_gutter,
    red = c.red,
    red_bright = U.brighten(c.red),
    green = c.green,
    green_bright = U.brighten(c.green),
    yellow = c.yellow,
    yellow_bright = U.brighten(c.yellow),
    blue = c.blue,
    blue_bright = U.brighten(c.blue),
    magenta = c.magenta,
    magenta_bright = U.brighten(c.magenta),
    cyan = c.cyan,
    cyan_bright = U.brighten(c.cyan),
    white = c.fg_darker,
    white_bright = c.fg,
  }

  -- ═══ Statusline ═══
  c.status = {
    bg = c.bg_dark,
    normal = c.primary,
    insert = c.green,
    command = c.yellow,
    visual = c.magenta,
    replace = c.red,
    terminal = c.cyan,
  }
end

return M
