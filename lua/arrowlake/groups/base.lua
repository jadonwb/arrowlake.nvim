local Util = require("arrowlake.util")

local M = {}

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)

  -- stylua: ignore
  return {
    Foo                         = { bg = c.ui.attention, fg = c.foregrounds.normal },

    Border                      = { fg = c.border.color, bg = c.backgrounds.normal}, -- border

    Comment                     = { fg = c.foregrounds.comment, style = opts.styles.comments }, -- any comment
    ColorColumn                 = { bg = c.backgrounds.color_column }, -- used for the columns set with 'colorcolumn'
    Conceal                     = { fg = c.foregrounds.darker }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor                      = { fg = c.ui.cursor_fg, bg = c.ui.cursor_bg }, -- character under the cursor
    lCursor                     = { fg = c.ui.cursor_fg, bg = c.ui.cursor_bg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM                    = { fg = c.ui.cursor_fg, bg = c.ui.cursor_bg }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn                = { bg = c.backgrounds.highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine                  = { bg = c.backgrounds.highlight }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory                   = { fg = c.ui.path }, -- directory names (and other special names in listings)
    DiffAdd                     = { bg = c.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange                  = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete                  = { bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText                    = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer                 = { fg = c.backgrounds.normal }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg                    = { fg = c.diagnostics.error }, -- error messages on the command line
    VertSplit                   = { fg = c.border.split }, -- the column separating vertically split windows
    WinSeparator                = { fg = c.border.split, bold = true }, -- the column separating vertically split windows
    Folded                      = { fg = c.ui.prompt, bg = c.backgrounds.fold }, -- line used for closed folds
    FoldColumn                  = { fg = c.foregrounds.darker }, -- 'foldcolumn'
    SignColumn                  = { fg = c.foregrounds.muted }, -- column where |signs| are displayed
    SignColumnSB                = { bg = c.backgrounds.sidebar, fg = c.foregrounds.muted }, -- column where |signs| are displayed
    Substitute                  = { bg = c.backgrounds.search_current, fg = c.foregrounds.normal }, -- |:substitute| replacement text highlighting
    LineNr                      = { fg = c.foregrounds.muted }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr                = { fg = c.focus, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    LineNrAbove                 = { fg = c.foregrounds.muted },
    LineNrBelow                 = { fg = c.foregrounds.muted },
    MatchParen                  = { fg = c.focus, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg                     = { fg = c.foregrounds.dark, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea                     = { fg = c.foregrounds.dark }, -- Area for messages and cmdline
    MoreMsg                     = { fg = c.ui.prompt }, -- |more-prompt|
    NonText                     = { fg = c.foregrounds.darker }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal                      = { fg = c.foregrounds.normal, bg = opts.transparent and c.none or c.backgrounds.normal }, -- normal text
    NormalNC                    = { fg = c.foregrounds.normal, bg = opts.transparent and c.none or opts.dim_inactive and c.backgrounds.dark or c.backgrounds.normal }, -- normal text in non-current windows
    NormalSB                    = { fg = c.foregrounds.sidebar, bg = c.backgrounds.sidebar }, -- normal text in sidebar
    NormalFloat                 = { fg = c.foregrounds.normal, bg = c.backgrounds.float }, -- Normal text in floating windows.
    FloatBorder                 = { fg = c.border.color, bg = c.backgrounds.float },
    FloatTitle                  = { fg = c.border.color, bg = c.backgrounds.float },
    Pmenu                       = { bg = c.backgrounds.popup, fg = c.foregrounds.normal }, -- Popup menu: normal item.
    PmenuMatch                  = { bg = c.backgrounds.popup, fg = c.focus }, -- Popup menu: Matched text in normal item.
    PmenuSel                    = { bg = c.backgrounds.highlight }, -- Popup menu: selected item.
    PmenuMatchSel               = { bg = c.backgrounds.highlight, fg = c.focus }, -- Popup menu: Matched text in selected item.
    PmenuSbar                   = { bg = Util.blend_fg(c.backgrounds.float, 0.95) }, -- Popup menu: scrollbar.
    PmenuThumb                  = { bg = c.foregrounds.muted }, -- Popup menu: Thumb of the scrollbar.
    Question                    = { fg = c.ui.prompt }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine                = { bg = c.backgrounds.visual, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search                      = { bg = c.backgrounds.search, fg = c.foregrounds.normal, bold = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch                   = { bg = c.backgrounds.search_current, fg = c.foregrounds.normal, bold = true }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch                   =  "IncSearch",
    SpecialKey                  = { fg = c.foregrounds.darker }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad                    = { sp = c.diagnostics.error, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap                    = { sp = c.diagnostics.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal                  = { sp = c.diagnostics.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare                   = { sp = c.diagnostics.hint, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine                  = { fg = c.foregrounds.statusline, bg = c.backgrounds.statusline }, -- status line of current window
    StatusLineNC                = { fg = c.foregrounds.muted, bg = c.backgrounds.statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine                     = { bg = c.backgrounds.tabline, fg = c.foregrounds.muted }, -- tab pages line, not active tab page label
    TabLineFill                 = { bg = c.backgrounds.tabline_fill }, -- tab pages line, where there are no labels
    TabLineSel                  = { fg = c.backgrounds.tabline, bg = c.foregrounds.tabline }, -- tab pages line, active tab page label
    Title                       = { fg = c.ui.header, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    Visual                      = { bg = c.backgrounds.visual }, -- Visual mode selection
    VisualNOS                   = { bg = c.backgrounds.visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg                  = { fg = c.diagnostics.warning }, -- warning messages
    Whitespace                  = { fg = c.foregrounds.muted }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu                    = { bg = c.backgrounds.visual }, -- current match in 'wildmenu' completion
    WinBar                      = { fg = c.foregrounds.winbar, bg = c.backgrounds.winbar } , -- window bar
    WinBarNC                    = { fg = c.foregrounds.muted, bg = c.backgrounds.winbar }, -- window bar in inactive windows

    Bold                        = { bold = true, fg = c.foregrounds.normal }, -- (preferred) any bold text
    Character                   = { fg = c.syntax.string }, --  a character constant: 'c', '\n'
    Constant                    = { fg = c.syntax.constant }, -- (preferred) any constant
    Debug                       = { fg = c.syntax.constant }, --    debugging statements
    Delimiter                   =  "Special", --  character that needs attention
    Error                       = { fg = c.diagnostics.error }, -- (preferred) any erroneous construct
    Function                    = { fg = c.syntax.functions, style = opts.styles.functions }, -- function name (also: methods for classes)
    Identifier                  = { fg = c.foregrounds.member, style = opts.styles.variables }, -- (preferred) any variable name
    Italic                      = { italic = true, fg = c.foregrounds.normal }, -- (preferred) any italic text
    Keyword                     = { fg = c.syntax.keyword, style = opts.styles.keywords }, --  any other keyword
    Operator                    = { fg = c.syntax.operator }, -- "sizeof", "+", "*", etc.
    PreProc                     = { fg = c.syntax.macro, style = opts.styles.preproc }, -- (preferred) generic Preprocessor
    Special                     = { fg = c.syntax.type_builtin }, -- (preferred) any special symbol
    Statement                   = { fg = c.syntax.keyword }, -- (preferred) any statement
    String                      = { fg = c.syntax.string }, --   a string constant: "this is a string"
    Todo                        = { bg = c.diagnostics.todo, fg = c.backgrounds.normal }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Type                        = { fg = c.syntax.type }, -- (preferred) int, long, char, etc.
    Underlined                  = { underline = true }, -- (preferred) text that stands out, HTML links
    debugBreakpoint             = { bg = Util.blend_bg(c.diagnostics.info, 0.1), fg = c.diagnostics.info }, -- used for breakpoint colors in terminal-debug
    debugPC                     = { bg = c.backgrounds.code }, -- used for highlighting the current line in terminal-debug
    dosIniLabel                 = "@property",
    helpCommand                 = { bg = c.backgrounds.highlight, fg = c.ui.prompt },
    htmlH1                      = { fg = c.ui.header, bold = true },
    htmlH2                      = { fg = c.ui.header, bold = true },
    qfFileName                  = { fg = c.ui.path },
    qfLineNr                    = { fg = c.foregrounds.muted },

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own.
    LspReferenceText            = { bg = c.backgrounds.hover }, -- used for highlighting "text" references
    LspReferenceRead            = { bg = c.backgrounds.hover }, -- used for highlighting "read" references
    LspReferenceWrite           = { bg = c.backgrounds.hover }, -- used for highlighting "write" references
    LspSignatureActiveParameter = { bg = c.backgrounds.search, fg = c.syntax.parameter, bold = true },
    LspCodeLens                 = { fg = c.foregrounds.comment },
    LspInlayHint                = { bg = c.backgrounds.code, fg = c.foregrounds.comment },
    LspInfoBorder               = { fg = c.border.color, bg = c.backgrounds.float },
    ComplHint                   = { fg = c.foregrounds.muted },

    -- diagnostics
    DiagnosticError             = { fg = c.diagnostics.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn              = { fg = c.diagnostics.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo              = { fg = c.diagnostics.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint              = { fg = c.diagnostics.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticUnnecessary       = { fg = c.foregrounds.muted }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticVirtualTextError  = { bg = Util.blend_bg(c.diagnostics.error, 0.1), fg = c.diagnostics.error }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn   = { bg = Util.blend_bg(c.diagnostics.warning, 0.05), fg = c.diagnostics.warning }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo   = { bg = Util.blend_bg(c.diagnostics.info, 0.1), fg = c.diagnostics.info }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint   = { bg = Util.blend_bg(c.diagnostics.hint, 0.1), fg = c.diagnostics.hint }, -- Used for "Hint" diagnostic virtual text
    DiagnosticUnderlineError    = { undercurl = true, sp = c.diagnostics.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn     = { undercurl = true, sp = c.diagnostics.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo     = { undercurl = true, sp = c.diagnostics.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { undercurl = true, sp = c.diagnostics.hint },

    -- Pill-badge labels for floating diagnostic popups
    DiagnosticFloatingErrorLabel = { fg = c.backgrounds.float, bg = c.diagnostics.error },
    DiagnosticFloatingWarnLabel = { fg = c.backgrounds.float, bg = c.diagnostics.warning },
    DiagnosticFloatingInfoLabel = { fg = c.backgrounds.float, bg = c.diagnostics.info },
    DiagnosticFloatingHintLabel = { fg = c.backgrounds.float, bg = c.diagnostics.hint },

    -- Used to underline "Hint" diagnostics

    -- Health
    healthError                 = { fg = c.diagnostics.error },
    healthSuccess               = { fg = c.diagnostics.success },
    healthWarning               = { fg = c.diagnostics.warning },

    -- diff
    -- used by native diff view (nvim -d)
    diffAdded                   = { bg = c.diff.add, fg = c.git.add },
    diffRemoved                 = { bg = c.diff.delete, fg = c.git.delete },
    diffChanged                 = { bg = c.diff.change, fg = c.git.change },
    -- used for git diff/patch syntax
    diffOldFile                 = { fg = c.ui.label, bg=c.diff.delete },
    diffNewFile                 = { fg = c.ui.label, bg=c.diff.add },
    diffFile                    = { fg = c.ui.path },
    diffLine                    = { fg = c.foregrounds.comment },
    diffIndexLine               = { fg = c.ui.header },
    -- used for :help, but invisible due to built-in help doc markup
    helpExample                 = { fg = c.foregrounds.comment },
  }
end

return M
