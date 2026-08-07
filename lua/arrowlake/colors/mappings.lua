local M = {}

--[[

  Takes the base palette (c.bg, c.red, c.primary, etc.) and derives every
  semantic color used by highlight groups.  Dark-theme overrides live in
  dark.lua's map() which calls apply() then reassigns a few fields.

  Naming conventions:
    c.backgrounds.*   — UI surface colors (sidebar, float, code block, …)
    c.foregrounds.*   — UI text colors (comment, muted, gutter, …)
    c.border.*        — window divider and border accent colors
    c.syntax.*        — syntax highlight colors
    c.diagnostics.*   — LSP / diagnostic / status colors
    c.git.*           — git status colors
    c.diff.*          — diff background colors
    c.terminal.*      — 16-color ANSI terminal palette
    c.status.*        — statusline mode colors
    c.rainbow         — rainbow array for indent guides / headings
---]]

-- TODO: add a swap magenta|purple option?
-- TODO: add comments for lsp purposes

---@param c arrowlake.Palette
function M.apply(c)
  local U = require("arrowlake.util")

  c.none = "NONE"

  -- ═══════════════════════════════════════════
  --  UI Backgrounds
  -- ═══════════════════════════════════════════
  c.backgrounds = {
    normal = c.bg,
    dark = c.bg_dark,
    darker = c.bg_darker,

    -- TODO: terminal bg

    -- Surfaces
    code = c.bg_dark,
    notification = c.bg_dark,
    sidebar = c.bg_darker,
    statusline = c.bg_dark,
    tabline = c.bg_dark,
    tabline_fill = c.bg_dark,
    color_column = c.bg_darker,
    winbar = c.bg_dark,
    float = c.bg_darker,
    popup = c.bg_darker,
    fold = c.bg_darker,

    -- Selections & highlights
    highlight = c.selection,
    visual = c.selection,
    hover = c.selection,
    search = c.selection,
    search_current = U.blend_bg(c.magenta, 0.37, c.bg),
  }

  -- ═══════════════════════════════════════════
  --  UI Foregrounds
  -- ═══════════════════════════════════════════
  c.foregrounds = {
    normal = c.fg,
    dark = c.fg_dark,
    darker = c.fg_darker,

    -- Semantic text roles
    muted = c.fg_gutter, -- dimmed / deemphasized
    sidebar = c.fg_darker,
    statusline = c.fg_darker,
    tabline = c.primary,
    winbar = c.fg_darker,
    indent = c.fg_gutter,

    -- move into syntax?
    comment = c.fg_darker,
    member = c.fg_dark,
    punctuation = c.fg_dark,
  }

  -- ═══════════════════════════════════════════
  --  Borders
  -- ═══════════════════════════════════════════
  c.border = {
    active = c.focus, -- focused border accent
    active_title = c.focus, -- focused titles in borders
    split = c.bg_dark, -- VertSplit / WinSeparator divider
    title = c.primary, -- titles in borders
    color = c.primary, -- main border accent
    subtle = c.fg_gutter, -- subtle / inactive border
  }

  -- ═══════════════════════════════════════════
  --  UI (structural decoration)
  -- ═══════════════════════════════════════════
  c.ui = {
    prompt = c.primary, -- prompts,
    header = c.primary, -- headings, titles, H1/H2
    path = c.primary, -- directories, filenames, root paths
    footer = c.secondary, -- dashboard footer text
    icon = c.secondary, -- generic subdued icons
    label = c.secondary, -- metadata descriptors
    cursor_bg = c.fg,
    cursor_fg = c.bg,
    attention = c.magenta,
    ai = c.orange,
  }

  -- ═══════════════════════════════════════════
  --  Syntax
  -- ═══════════════════════════════════════════
  c.syntax = {
    keyword = c.magenta,
    macro = c.cyan,
    string = c.green,
    string_doc = c.green,
    string_escape = c.magenta,
    md_inline = c.green,
    parameter = c.orange,
    variable = c.fg,
    constant = c.yellow,
    type = c.secondary,
    type_builtin = U.blend_bg(c.secondary, 0.85, c.bg),
    functions = c.primary,
    functions_builtin = U.blend_bg(c.primary, 0.85, c.bg),
    constructor = c.magenta,
    operator = c.special,
    markup = c.orange,
    link = c.orange,
  }

  -- ═══════════════════════════════════════════
  --  Diagnostics
  -- ═══════════════════════════════════════════
  c.diagnostics = {
    error = c.red,
    warning = c.yellow,
    info = c.secondary,
    hint = c.cyan,
    success = c.green, -- consider removing this + using info instead
    todo = c.secondary,
    trace = c.purple,
  }

  -- ═══════════════════════════════════════════
  --  Rainbow (indent guides, markdown headings)
  -- ═══════════════════════════════════════════
  c.rainbow = { c.purple, c.blue, c.green, c.yellow, c.magenta, c.cyan, c.red, c.orange }

  -- ═══════════════════════════════════════════
  --  Git
  -- ═══════════════════════════════════════════
  c.git = {
    add = c.green,
    change = c.yellow,
    delete = c.red,
    ignore = c.fg_darker,
    -- git title/file stuff
  }

  -- ═══════════════════════════════════════════
  --  Diff
  -- ═══════════════════════════════════════════
  c.diff = {
    add = U.blend_bg(c.green, 0.15, c.bg),
    change = U.blend_bg(c.yellow, 0.22, c.bg),
    delete = U.blend_bg(c.red, 0.15, c.bg),
    text = U.blend_bg(c.green, 0.26, c.bg),
    -- make addtext, deletetext
  }

  -- ═══════════════════════════════════════════
  --  Terminal (16-color ANSI)
  -- ═══════════════════════════════════════════
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

  -- ═══════════════════════════════════════════
  --  Statusline
  -- ═══════════════════════════════════════════
  c.status = {
    normal = c.primary,
    insert = c.green,
    command = c.yellow,
    visual = c.magenta,
    replace = c.red,
    terminal = c.cyan,
    inactive = c.bg_darker,
  }
end

return M
