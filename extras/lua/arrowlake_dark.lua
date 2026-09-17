local colors = {
  _name = "arrowlake_dark",
  _style = "dark",
  backgrounds = {
    code = "#09081a",
    color_column = "#070614",
    dark = "#09081a",
    darker = "#070614",
    float = "#070614",
    fold = "#070614",
    highlight = "#161440",
    hover = "#161440",
    normal = "#0D0C25",
    notification = "#070614",
    popup = "#070614",
    search = "#161440",
    search_current = "#691351",
    sidebar = "#070614",
    statusline = "#09081a",
    tabline = "#09081a",
    tabline_fill = "#09081a",
    visual = "#161440",
    winbar = "#09081a"
  },
  bg = "#0D0C25",
  bg_dark = "#09081a",
  bg_darker = "#070614",
  blue = "#3F3BF5",
  border = {
    active = "#FB9B00",
    active_title = "#FB9B00",
    color = "#3F3BF5",
    split = "#09081a",
    subtle = "#312e55",
    title = "#3F3BF5"
  },
  cyan = "#33D4B4",
  diagnostics = {
    error = "#E50050",
    hint = "#33D4B4",
    info = "#5352CD",
    success = "#2A8A6B",
    todo = "#5352CD",
    trace = "#834CCF",
    warning = "#FB9B00"
  },
  diff = {
    add = "#111f30",
    change = "#42393b",
    delete = "#2d0a2b",
    text = "#152d37"
  },
  fg = "#bec8e8",
  fg_dark = "#7e85b8",
  fg_darker = "#5c6296",
  fg_gutter = "#312e55",
  focus = "#FB9B00",
  foregrounds = {
    comment = "#5c6296",
    dark = "#7e85b8",
    darker = "#5c6296",
    indent = "#312e55",
    member = "#7e85b8",
    muted = "#312e55",
    normal = "#bec8e8",
    punctuation = "#7e85b8",
    sidebar = "#5c6296",
    statusline = "#5c6296",
    tabline = "#3F3BF5",
    winbar = "#5c6296"
  },
  git = {
    add = "#2A8A6B",
    change = "#FFD888",
    delete = "#E50050",
    ignore = "#5c6296"
  },
  green = "#2A8A6B",
  magenta = "#D91C87",
  none = "NONE",
  orange = "#FB9B00",
  primary = "#3F3BF5",
  purple = "#834CCF",
  rainbow = { "#3F3BF5", "#FFD888", "#D91C87", "#2A8A6B", "#33D4B4", "#834CCF", "#E50050", "#FB9B00" },
  red = "#E50050",
  secondary = "#5352CD",
  selection = "#161440",
  special = "#9AC1E5",
  status = {
    command = "#FB9B00",
    inactive = "#070614",
    insert = "#2A8A6B",
    normal = "#3F3BF5",
    replace = "#E50050",
    terminal = "#33D4B4",
    visual = "#D91C87"
  },
  syntax = {
    constant = "#FFD888",
    constructor = "#D91C87",
    functions = "#3F3BF5",
    functions_builtin = "#3834d6",
    keyword = "#D91C87",
    link = "#33D4B4",
    macro = "#33D4B4",
    markup = "#FB9B00",
    md_inline = "#FFD888",
    operator = "#9AC1E5",
    parameter = "#FFD888",
    string = "#2A8A6B",
    string_doc = "#FFD888",
    string_escape = "#D91C87",
    type = "#5352CD",
    type_builtin = "#4948b4",
    variable = "#bec8e8"
  },
  terminal = {
    black = "#070614",
    black_bright = "#312e55",
    blue = "#3F3BF5",
    blue_bright = "#4f4cff",
    cyan = "#33D4B4",
    cyan_bright = "#00e5c0",
    green = "#2A8A6B",
    green_bright = "#009a74",
    magenta = "#D91C87",
    magenta_bright = "#f50097",
    red = "#E50050",
    red_bright = "#fd0059",
    white = "#5c6296",
    white_bright = "#bec8e8",
    yellow = "#FFD888",
    yellow_bright = "#ffe8c2"
  },
  ui = {
    ai = "#33D4B4",
    attention = "#D91C87",
    cursor_bg = "#bec8e8",
    cursor_fg = "#0D0C25",
    footer = "#5352CD",
    header = "#3F3BF5",
    icon = "#5352CD",
    label = "#5352CD",
    path = "#3F3BF5",
    prompt = "#3F3BF5"
  },
  yellow = "#FFD888"
}

local highlights = {
  ["@annotation"] = "PreProc",
  ["@attribute"] = "PreProc",
  ["@boolean"] = "Boolean",
  ["@character"] = "Character",
  ["@character.printf"] = "SpecialChar",
  ["@character.special"] = "SpecialChar",
  ["@comment"] = "Comment",
  ["@comment.error"] = {
    fg = "#E50050"
  },
  ["@comment.hint"] = {
    fg = "#33D4B4"
  },
  ["@comment.info"] = {
    fg = "#5352CD"
  },
  ["@comment.note"] = {
    fg = "#33D4B4"
  },
  ["@comment.todo"] = {
    fg = "#5352CD"
  },
  ["@comment.warning"] = {
    fg = "#FB9B00"
  },
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Special",
  ["@constant.macro"] = "Define",
  ["@constructor"] = {
    fg = "#D91C87"
  },
  ["@constructor.tsx"] = {
    fg = "#5352CD"
  },
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdd",
  ["@function"] = "Function",
  ["@function.builtin"] = {
    bold = true,
    fg = "#3834d6"
  },
  ["@function.call"] = "@function",
  ["@function.macro"] = "Macro",
  ["@function.method"] = "Function",
  ["@function.method.call"] = "@function.method",
  ["@keyword"] = {
    fg = "#D91C87",
    italic = true
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    bold = true,
    fg = "#3F3BF5"
  },
  ["@keyword.import"] = "Include",
  ["@keyword.operator"] = "@keyword",
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@label"] = {
    fg = "#5352CD"
  },
  ["@lsp.type.boolean"] = "@boolean",
  ["@lsp.type.builtinType"] = "@type.builtin",
  ["@lsp.type.comment"] = "@comment",
  ["@lsp.type.decorator"] = "@attribute",
  ["@lsp.type.deriveHelper"] = "@attribute",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.escapeSequence"] = "@string.escape",
  ["@lsp.type.formatSpecifier"] = "@markup.list",
  ["@lsp.type.generic"] = "@variable",
  ["@lsp.type.interface"] = "@type",
  ["@lsp.type.keyword"] = "@keyword",
  ["@lsp.type.lifetime"] = "@keyword.storage",
  ["@lsp.type.namespace"] = "@module",
  ["@lsp.type.namespace.python"] = "@variable",
  ["@lsp.type.number"] = "@number",
  ["@lsp.type.operator"] = "@operator",
  ["@lsp.type.parameter"] = "@variable.parameter",
  ["@lsp.type.property"] = "@property",
  ["@lsp.type.selfKeyword"] = "@variable.builtin",
  ["@lsp.type.selfTypeKeyword"] = "@variable.builtin",
  ["@lsp.type.string"] = "@string",
  ["@lsp.type.typeAlias"] = "@type.definition",
  ["@lsp.type.unresolvedReference"] = {
    sp = "#E50050",
    undercurl = true
  },
  ["@lsp.type.variable"] = {},
  ["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
  ["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
  ["@lsp.typemod.keyword.injected"] = "@keyword",
  ["@lsp.typemod.macro.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.operator.injected"] = "@operator",
  ["@lsp.typemod.string.injected"] = "@string",
  ["@lsp.typemod.struct.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.type.defaultLibrary"] = {
    fg = "#4948b4"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#4948b4"
  },
  ["@lsp.typemod.variable.callable"] = "@function",
  ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
  ["@lsp.typemod.variable.injected"] = "@variable",
  ["@lsp.typemod.variable.static"] = "@constant",
  ["@markup"] = "@none",
  ["@markup.emphasis"] = {
    italic = true
  },
  ["@markup.environment"] = "Macro",
  ["@markup.environment.name"] = "Type",
  ["@markup.heading"] = "Title",
  ["@markup.heading.1.markdown"] = {
    bg = "#12113a",
    bold = true,
    fg = "#3F3BF5"
  },
  ["@markup.heading.2.markdown"] = {
    bg = "#25202f",
    bold = true,
    fg = "#FFD888"
  },
  ["@markup.heading.3.markdown"] = {
    bg = "#210e2f",
    bold = true,
    fg = "#D91C87"
  },
  ["@markup.heading.4.markdown"] = {
    bg = "#10192c",
    bold = true,
    fg = "#2A8A6B"
  },
  ["@markup.heading.5.markdown"] = {
    bg = "#112033",
    bold = true,
    fg = "#33D4B4"
  },
  ["@markup.heading.6.markdown"] = {
    bg = "#191236",
    bold = true,
    fg = "#834CCF"
  },
  ["@markup.heading.7.markdown"] = {
    bg = "#230b29",
    bold = true,
    fg = "#E50050"
  },
  ["@markup.heading.8.markdown"] = {
    bg = "#251a21",
    bold = true,
    fg = "#FB9B00"
  },
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = {
    fg = "#33D4B4"
  },
  ["@markup.link.label"] = "SpecialChar",
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = "Underlined",
  ["@markup.list"] = {
    fg = "#FB9B00"
  },
  ["@markup.list.checked"] = {
    fg = "#2A8A6B"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#FB9B00"
  },
  ["@markup.list.unchecked"] = {
    fg = "#33D4B4"
  },
  ["@markup.math"] = "Special",
  ["@markup.raw"] = "String",
  ["@markup.raw.markdown_inline"] = {
    bg = "#09081a",
    fg = "#FFD888"
  },
  ["@markup.strikethrough"] = {
    strikethrough = true
  },
  ["@markup.strong"] = {
    bold = true
  },
  ["@markup.underline"] = {
    underline = true
  },
  ["@module"] = "Include",
  ["@module.builtin"] = {
    fg = "#D91C87"
  },
  ["@namespace.builtin"] = "@variable.builtin",
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.float"] = "Float",
  ["@operator"] = {
    fg = "#9AC1E5"
  },
  ["@property"] = {
    fg = "#7e85b8"
  },
  ["@property.json"] = {
    fg = "#5352CD"
  },
  ["@punctuation.bracket"] = {
    fg = "#7e85b8"
  },
  ["@punctuation.delimiter"] = {
    fg = "#7e85b8"
  },
  ["@punctuation.special"] = {
    fg = "#9AC1E5"
  },
  ["@punctuation.special.markdown"] = {
    fg = "#FB9B00"
  },
  ["@string"] = "String",
  ["@string.documentation"] = {
    fg = "#FFD888"
  },
  ["@string.escape"] = {
    fg = "#D91C87"
  },
  ["@string.regexp"] = {
    fg = "#9AC1E5"
  },
  ["@tag"] = {
    fg = "#D91C87"
  },
  ["@tag.attribute"] = "@property",
  ["@tag.delimiter"] = "Delimiter",
  ["@tag.delimiter.tsx"] = {
    fg = "#3e3d9b"
  },
  ["@tag.javascript"] = "@tag",
  ["@tag.tsx"] = "@tag",
  ["@type"] = "Type",
  ["@type.builtin"] = {
    fg = "#4948b4"
  },
  ["@type.definition"] = "Typedef",
  ["@type.qualifier"] = "@keyword",
  ["@variable"] = {
    fg = "#bec8e8"
  },
  ["@variable.builtin"] = {
    fg = "#D91C87"
  },
  ["@variable.member"] = {
    fg = "#7e85b8"
  },
  ["@variable.parameter"] = {
    fg = "#FFD888"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#f2d59b"
  },
  ArrowlakeCommentFixme = {
    fg = "#E50050"
  },
  ArrowlakeCommentNote = {
    fg = "#33D4B4"
  },
  ArrowlakeCommentPerf = {
    fg = "#D91C87"
  },
  ArrowlakeCommentTest = {
    fg = "#FFD888"
  },
  ArrowlakeCommentTodo = {
    fg = "#5352CD"
  },
  ArrowlakeCommentWarn = {
    fg = "#FB9B00"
  },
  BlinkCmpDoc = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  BlinkCmpDocBorder = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  BlinkCmpGhostText = {
    fg = "#312e55"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = "LspKindClass",
  BlinkCmpKindCodeium = {
    bg = "NONE",
    fg = "#33D4B4"
  },
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#33D4B4"
  },
  BlinkCmpKindDefault = {
    bg = "NONE",
    fg = "#7e85b8"
  },
  BlinkCmpKindEnum = "LspKindEnum",
  BlinkCmpKindEnumMember = "LspKindEnumMember",
  BlinkCmpKindEvent = "LspKindEvent",
  BlinkCmpKindField = "LspKindField",
  BlinkCmpKindFile = "LspKindFile",
  BlinkCmpKindFolder = "LspKindFolder",
  BlinkCmpKindFunction = "LspKindFunction",
  BlinkCmpKindInterface = "LspKindInterface",
  BlinkCmpKindKey = "LspKindKey",
  BlinkCmpKindKeyword = "LspKindKeyword",
  BlinkCmpKindMethod = "LspKindMethod",
  BlinkCmpKindModule = "LspKindModule",
  BlinkCmpKindNamespace = "LspKindNamespace",
  BlinkCmpKindNull = "LspKindNull",
  BlinkCmpKindNumber = "LspKindNumber",
  BlinkCmpKindObject = "LspKindObject",
  BlinkCmpKindOperator = "LspKindOperator",
  BlinkCmpKindPackage = "LspKindPackage",
  BlinkCmpKindProperty = "LspKindProperty",
  BlinkCmpKindReference = "LspKindReference",
  BlinkCmpKindSnippet = "LspKindSnippet",
  BlinkCmpKindString = "LspKindString",
  BlinkCmpKindStruct = "LspKindStruct",
  BlinkCmpKindSupermaven = {
    bg = "NONE",
    fg = "#33D4B4"
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#33D4B4"
  },
  BlinkCmpKindText = "LspKindText",
  BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  BlinkCmpKindUnit = "LspKindUnit",
  BlinkCmpKindValue = "LspKindValue",
  BlinkCmpKindVariable = "LspKindVariable",
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#bec8e8"
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#312e55",
    strikethrough = true
  },
  BlinkCmpLabelMatch = "CurSearch",
  BlinkCmpMenu = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  BlinkCmpMenuBorder = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  BlinkCmpSignatureHelp = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  Bold = {
    bold = true,
    fg = "#bec8e8"
  },
  Border = {
    bg = "#0D0C25",
    fg = "#3F3BF5"
  },
  Character = {
    fg = "#2A8A6B"
  },
  ColorColumn = {
    bg = "#070614"
  },
  ColorfulWinSep = {
    fg = "#FB9B00"
  },
  Comment = {
    fg = "#5c6296",
    italic = true
  },
  ComplHint = {
    fg = "#312e55"
  },
  Conceal = {
    fg = "#5c6296"
  },
  Constant = {
    fg = "#FFD888"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#bec8e8",
    fg = "#0D0C25"
  },
  CursorColumn = {
    bg = "#161440"
  },
  CursorIM = {
    bg = "#bec8e8",
    fg = "#0D0C25"
  },
  CursorLine = {
    bg = "#161440"
  },
  CursorLineNr = {
    bold = true,
    fg = "#FB9B00"
  },
  DapStoppedLine = {
    bg = "#251a21"
  },
  Debug = {
    fg = "#FFD888"
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = "#E50050"
  },
  DiagnosticFloatingErrorLabel = {
    bg = "#E50050",
    fg = "#070614"
  },
  DiagnosticFloatingHintLabel = {
    bg = "#33D4B4",
    fg = "#070614"
  },
  DiagnosticFloatingInfoLabel = {
    bg = "#5352CD",
    fg = "#070614"
  },
  DiagnosticFloatingWarnLabel = {
    bg = "#FB9B00",
    fg = "#070614"
  },
  DiagnosticHint = {
    fg = "#33D4B4"
  },
  DiagnosticInfo = {
    fg = "#5352CD"
  },
  DiagnosticUnderlineError = {
    sp = "#E50050",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#33D4B4",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#5352CD",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#FB9B00",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#312e55"
  },
  DiagnosticVirtualTextError = {
    bg = "#230b29",
    fg = "#E50050"
  },
  DiagnosticVirtualTextHint = {
    bg = "#112033",
    fg = "#33D4B4"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#141336",
    fg = "#5352CD"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#191323",
    fg = "#FB9B00"
  },
  DiagnosticWarn = {
    fg = "#FB9B00"
  },
  DiffAdd = {
    bg = "#111f30"
  },
  DiffChange = {
    bg = "#42393b"
  },
  DiffDelete = {
    bg = "#2d0a2b"
  },
  DiffText = {
    bg = "#152d37"
  },
  DiffviewCommitSelected = {
    bold = true,
    fg = "#FB9B00"
  },
  DiffviewDiffAddText = {
    bg = "#152d37"
  },
  DiffviewDiffDeleteText = {
    bg = "#450930"
  },
  DiffviewDiffFill = {
    fg = "#5c6296"
  },
  DiffviewFilePanelConflicts = {
    bold = true,
    link = "DiagnosticSignWarn"
  },
  DiffviewFilePanelDeletions = {
    bold = true,
    fg = "#E50050"
  },
  DiffviewFilePanelInsertions = {
    bold = true,
    fg = "#2A8A6B"
  },
  DiffviewFilePanelSelected = {
    bold = true,
    fg = "#FB9B00"
  },
  DiffviewFilePanelTitle = {
    bold = true,
    fg = "#3F3BF5"
  },
  DiffviewFolderSign = {
    fg = "#5352CD"
  },
  DiffviewPrimary = {
    fg = "#3F3BF5"
  },
  DiffviewReference = {
    fg = "#5352CD"
  },
  DiffviewSecondary = {
    fg = "#5352CD"
  },
  DiffviewSignColumn = "SignColumn",
  DiffviewStatusAdded = {
    fg = "#2A8A6B"
  },
  DiffviewStatusBroken = {
    fg = "#E50050"
  },
  DiffviewStatusCopied = {
    fg = "#FFD888"
  },
  DiffviewStatusDeleted = {
    fg = "#E50050"
  },
  DiffviewStatusModified = {
    fg = "#FFD888"
  },
  DiffviewStatusRenamed = {
    fg = "#FFD888"
  },
  DiffviewStatusTypeChange = {
    fg = "#FFD888"
  },
  DiffviewStatusUnknown = {
    fg = "#E50050"
  },
  DiffviewStatusUnmerged = {
    fg = "#FFD888"
  },
  DiffviewStatusUntracked = {
    fg = "#2A8A6B"
  },
  Directory = {
    fg = "#3F3BF5"
  },
  EndOfBuffer = {
    fg = "#0D0C25"
  },
  Error = {
    fg = "#E50050"
  },
  ErrorMsg = {
    fg = "#E50050"
  },
  FFFFileInfoLabel = {
    bg = "#070614",
    fg = "#5c6296"
  },
  FFFFileInfoMatchType = {
    bg = "#070614",
    bold = true,
    fg = "#D91C87"
  },
  FFFFileInfoPath = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  FFFFileInfoScoreNeg = {
    bg = "#070614",
    fg = "#E50050"
  },
  FFFFileInfoScorePos = {
    bg = "#070614",
    fg = "#2A8A6B"
  },
  FFFFileInfoSection = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  FFFFileInfoSeparator = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  FFFFileInfoSize = {
    bg = "#070614",
    fg = "#FFD888"
  },
  FFFFileInfoTotalScore = {
    bg = "#070614",
    bold = true,
    fg = "#bec8e8"
  },
  FFFFileInfoType = {
    bg = "#070614",
    fg = "#5352CD"
  },
  FFFFileInfoValue = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  FFFFileInfoValueDim = {
    bg = "#070614",
    fg = "#312e55"
  },
  FFFGitDeleted = {
    fg = "#E50050"
  },
  FFFGitIgnored = {
    fg = "#5c6296"
  },
  FFFGitModified = {
    fg = "#FFD888"
  },
  FFFGitRenamed = {
    fg = "#FFD888"
  },
  FFFGitSignDeleted = {
    fg = "#E50050"
  },
  FFFGitSignDeletedSelected = {
    bg = "#161440",
    fg = "#E50050"
  },
  FFFGitSignIgnored = {
    fg = "#5c6296"
  },
  FFFGitSignIgnoredSelected = {
    bg = "#161440",
    fg = "#5c6296"
  },
  FFFGitSignModified = {
    fg = "#FFD888"
  },
  FFFGitSignModifiedSelected = {
    bg = "#161440",
    fg = "#FFD888"
  },
  FFFGitSignRenamed = {
    fg = "#FFD888"
  },
  FFFGitSignRenamedSelected = {
    bg = "#161440",
    fg = "#FFD888"
  },
  FFFGitSignStaged = {
    fg = "#2A8A6B"
  },
  FFFGitSignStagedSelected = {
    bg = "#161440",
    fg = "#2A8A6B"
  },
  FFFGitSignUntracked = {
    fg = "#2A8A6B"
  },
  FFFGitSignUntrackedSelected = {
    bg = "#161440",
    fg = "#2A8A6B"
  },
  FFFGitStaged = {
    fg = "#2A8A6B"
  },
  FFFGitUntracked = {
    fg = "#2A8A6B"
  },
  FFFSelected = {
    fg = "#D91C87"
  },
  FFFSelectedActive = {
    bg = "#161440",
    fg = "#FB9B00"
  },
  FlashBackdrop = {
    fg = "#5c6296"
  },
  FlashLabel = {
    bg = "#D91C87",
    bold = true,
    fg = "#0D0C25"
  },
  FloatBorder = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  FloatTitle = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  FoldColumn = {
    fg = "#5c6296"
  },
  Folded = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  Foo = {
    bg = "#D91C87",
    fg = "#bec8e8"
  },
  Function = {
    bold = true,
    fg = "#3F3BF5"
  },
  GitSignsAdd = {
    fg = "#2A8A6B"
  },
  GitSignsChange = {
    fg = "#FFD888"
  },
  GitSignsDelete = {
    fg = "#E50050"
  },
  GrugFarHelpHeader = {
    fg = "#5c6296"
  },
  GrugFarHelpHeaderKey = {
    fg = "#33D4B4"
  },
  GrugFarInputLabel = {
    fg = "#5352CD"
  },
  GrugFarInputPlaceholder = {
    fg = "#5c6296"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#FFD888"
  },
  GrugFarResultsHeader = {
    fg = "#FB9B00"
  },
  GrugFarResultsLineColumn = {
    fg = "#5c6296"
  },
  GrugFarResultsLineNo = {
    fg = "#5c6296"
  },
  GrugFarResultsMatch = {
    bg = "#691351",
    fg = "#bec8e8"
  },
  GrugFarResultsStats = {
    fg = "#834CCF"
  },
  Identifier = {
    fg = "#7e85b8"
  },
  IncSearch = {
    bg = "#691351",
    bold = true,
    fg = "#bec8e8"
  },
  Italic = {
    fg = "#bec8e8",
    italic = true
  },
  Keyword = {
    fg = "#D91C87",
    italic = true
  },
  LazyBold = {
    bold = true
  },
  LazyButton = {
    bg = "#161440",
    fg = "#bec8e8"
  },
  LazyButtonActive = {
    bg = "#161440",
    fg = "#bec8e8"
  },
  LazyComment = {
    fg = "#5c6296"
  },
  LazyCommit = {
    fg = "#2A8A6B"
  },
  LazyCommitIssue = {
    fg = "#FFD888"
  },
  LazyCommitScope = {
    italic = true
  },
  LazyCommitType = {
    bold = true,
    fg = "#3F3BF5"
  },
  LazyDimmed = {
    fg = "#312e55"
  },
  LazyDir = {
    fg = "#3F3BF5"
  },
  LazyError = {
    fg = "#E50050"
  },
  LazyH1 = {
    bg = "#161440",
    bold = true,
    fg = "#3F3BF5"
  },
  LazyH2 = {
    bold = true,
    fg = "#5352CD"
  },
  LazyInfo = {
    fg = "#5352CD"
  },
  LazyItalic = {
    italic = true
  },
  LazyLocal = {
    fg = "#5352CD"
  },
  LazyNoCond = {
    fg = "#FB9B00"
  },
  LazyNormal = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  LazyProgressDone = {
    bold = true,
    fg = "#D91C87"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#312e55"
  },
  LazyProp = {
    fg = "#312e55"
  },
  LazyReasonCmd = {
    fg = "#FFD888"
  },
  LazyReasonEvent = {
    fg = "#D91C87"
  },
  LazyReasonFt = {
    fg = "#2A8A6B"
  },
  LazyReasonImport = {
    fg = "#bec8e8"
  },
  LazyReasonKeys = {
    fg = "#FB9B00"
  },
  LazyReasonPlugin = {
    fg = "#3F3BF5"
  },
  LazyReasonRequire = {
    fg = "#5352CD"
  },
  LazyReasonRuntime = {
    fg = "#FFD888"
  },
  LazyReasonSource = {
    fg = "#2A8A6B"
  },
  LazyReasonStart = {
    fg = "#7e85b8"
  },
  LazySpecial = {
    fg = "#33D4B4"
  },
  LazyTaskOutput = {
    fg = "#5c6296"
  },
  LazyUrl = {
    fg = "#33D4B4"
  },
  LazyValue = {
    fg = "#2A8A6B"
  },
  LazyWarning = {
    fg = "#FB9B00"
  },
  LineNr = {
    fg = "#312e55"
  },
  LineNrAbove = {
    fg = "#312e55"
  },
  LineNrBelow = {
    fg = "#312e55"
  },
  LspCodeLens = {
    fg = "#5c6296"
  },
  LspInfoBorder = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  LspInlayHint = {
    bg = "#09081a",
    fg = "#5c6296"
  },
  LspKindArray = "@punctuation.bracket",
  LspKindBoolean = "@boolean",
  LspKindClass = "@type",
  LspKindColor = "Special",
  LspKindConstant = "@constant",
  LspKindConstructor = "@constructor",
  LspKindEnum = "@lsp.type.enum",
  LspKindEnumMember = "@lsp.type.enumMember",
  LspKindEvent = "Special",
  LspKindField = "@variable.member",
  LspKindFile = "Normal",
  LspKindFolder = "Directory",
  LspKindFunction = "@function",
  LspKindInterface = "@lsp.type.interface",
  LspKindKey = "@variable.member",
  LspKindKeyword = "@lsp.type.keyword",
  LspKindMethod = "@function.method",
  LspKindModule = "@module",
  LspKindNamespace = "@module",
  LspKindNull = "@constant.builtin",
  LspKindNumber = "@number",
  LspKindObject = "@constant",
  LspKindOperator = "@operator",
  LspKindPackage = "@module",
  LspKindProperty = "@property",
  LspKindReference = "@markup.link",
  LspKindSnippet = "Conceal",
  LspKindString = "@string",
  LspKindStruct = "@lsp.type.struct",
  LspKindText = "@markup",
  LspKindTypeParameter = "@lsp.type.typeParameter",
  LspKindUnit = "@lsp.type.struct",
  LspKindValue = "@string",
  LspKindVariable = "@variable",
  LspReferenceRead = {
    bg = "#161440"
  },
  LspReferenceText = {
    bg = "#161440"
  },
  LspReferenceWrite = {
    bg = "#161440"
  },
  LspSignatureActiveParameter = {
    bg = "#161440",
    bold = true,
    fg = "#FFD888"
  },
  MasonHeader = {
    bg = "#FB9B00",
    fg = "#bec8e8"
  },
  MasonHeaderSecondary = {
    bg = "#33D4B4",
    fg = "#bec8e8"
  },
  MasonHighlight = {
    fg = "#33D4B4"
  },
  MasonHighlightBlock = {
    bg = "#33D4B4",
    fg = "#bec8e8"
  },
  MasonHighlightBlockBold = {
    bg = "#33D4B4",
    bold = true,
    cterm = {
      bold = true
    },
    default = true,
    fg = "#bec8e8"
  },
  MasonHighlightBlockBoldSecondary = {
    bg = "#FB9B00",
    bold = true,
    cterm = {
      bold = true
    },
    default = true,
    fg = "#bec8e8"
  },
  MasonHighlightBlockSecondary = {
    bg = "#FB9B00",
    fg = "#bec8e8"
  },
  MasonHighlightSecondary = {
    fg = "#FB9B00"
  },
  MasonLink = {
    fg = "#33D4B4"
  },
  MasonMuted = {
    fg = "#312e55"
  },
  MasonMutedBlock = {
    bg = "#312e55",
    fg = "#bec8e8"
  },
  MasonMutedBlockBold = {
    bg = "#312e55",
    bold = true,
    cterm = {
      bold = true
    },
    default = true,
    fg = "#bec8e8"
  },
  MatchParen = {
    bold = true,
    fg = "#FB9B00"
  },
  MiniHipatternsFixme = {
    bg = "#E50050",
    bold = true,
    fg = "#070614"
  },
  MiniHipatternsHack = {
    bg = "#FB9B00",
    bold = true,
    fg = "#070614"
  },
  MiniHipatternsNote = {
    bg = "#33D4B4",
    bold = true,
    fg = "#070614"
  },
  MiniHipatternsTodo = {
    bg = "#5352CD",
    bold = true,
    fg = "#070614"
  },
  MiniIconsAzure = {
    fg = "#33D4B4"
  },
  MiniIconsBlue = {
    fg = "#3F3BF5"
  },
  MiniIconsCyan = {
    fg = "#33D4B4"
  },
  MiniIconsGreen = {
    fg = "#2A8A6B"
  },
  MiniIconsGrey = {
    fg = "#5c6296"
  },
  MiniIconsOrange = {
    fg = "#FB9B00"
  },
  MiniIconsPurple = {
    fg = "#834CCF"
  },
  MiniIconsRed = {
    fg = "#E50050"
  },
  MiniIconsYellow = {
    fg = "#FFD888"
  },
  MiniSurround = {
    bg = "#FB9B00",
    fg = "#070614"
  },
  ModeMsg = {
    bold = true,
    fg = "#7e85b8"
  },
  MoreMsg = {
    fg = "#3F3BF5"
  },
  MsgArea = {
    fg = "#7e85b8"
  },
  NonText = {
    fg = "#5c6296"
  },
  Normal = {
    bg = "#0D0C25",
    fg = "#bec8e8"
  },
  NormalFloat = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  NormalNC = {
    bg = "#0D0C25",
    fg = "#bec8e8"
  },
  NormalSB = {
    bg = "#070614",
    fg = "#5c6296"
  },
  Operator = {
    fg = "#9AC1E5"
  },
  Pmenu = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  PmenuMatch = {
    bg = "#070614",
    fg = "#FB9B00"
  },
  PmenuMatchSel = {
    bg = "#161440",
    fg = "#FB9B00"
  },
  PmenuSbar = {
    bg = "#10101f"
  },
  PmenuSel = {
    bg = "#161440"
  },
  PmenuThumb = {
    bg = "#312e55"
  },
  PreProc = {
    bold = true,
    fg = "#33D4B4"
  },
  Question = {
    fg = "#3F3BF5"
  },
  QuickFixLine = {
    bg = "#161440",
    bold = true
  },
  RenderMarkdownBullet = {
    fg = "#FB9B00"
  },
  RenderMarkdownCode = {
    bg = "#09081a"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#FB9B00"
  },
  RenderMarkdownH1Bg = {
    bg = "#12113a"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#3F3BF5"
  },
  RenderMarkdownH2Bg = {
    bg = "#25202f"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#FFD888"
  },
  RenderMarkdownH3Bg = {
    bg = "#210e2f"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#D91C87"
  },
  RenderMarkdownH4Bg = {
    bg = "#10192c"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#2A8A6B"
  },
  RenderMarkdownH5Bg = {
    bg = "#112033"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#33D4B4"
  },
  RenderMarkdownH6Bg = {
    bg = "#191236"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#834CCF"
  },
  RenderMarkdownH7Bg = {
    bg = "#230b29"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#E50050"
  },
  RenderMarkdownH8Bg = {
    bg = "#251a21"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#FB9B00"
  },
  RenderMarkdownTableHead = {
    fg = "#3F3BF5"
  },
  RenderMarkdownTableRow = {
    fg = "#5352CD"
  },
  Search = {
    bg = "#161440",
    bold = true,
    fg = "#bec8e8"
  },
  SignColumn = {
    fg = "#312e55"
  },
  SignColumnSB = {
    bg = "#070614",
    fg = "#312e55"
  },
  SnacksDashboardDesc = {
    fg = "#33D4B4"
  },
  SnacksDashboardDir = {
    fg = "#5c6296"
  },
  SnacksDashboardFooter = {
    fg = "#5352CD"
  },
  SnacksDashboardHeader = {
    fg = "#3F3BF5"
  },
  SnacksDashboardIcon = {
    fg = "#5352CD"
  },
  SnacksDashboardKey = {
    fg = "#FB9B00"
  },
  SnacksDashboardSpecial = {
    fg = "#D91C87"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksGhDiffHeader = {
    bg = "#141336",
    fg = "#5352CD"
  },
  SnacksGhLabel = {
    bold = true,
    fg = "#5352CD"
  },
  SnacksIndent = {
    fg = "#312e55",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#3F3BF5",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#FFD888",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#D91C87",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#2A8A6B",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#33D4B4",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#834CCF",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#E50050",
    nocombine = true
  },
  SnacksIndent8 = {
    fg = "#FB9B00",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#FB9B00",
    nocombine = true
  },
  SnacksInputBorder = {
    bg = "#070614",
    fg = "#FB9B00"
  },
  SnacksInputIcon = {
    fg = "#5352CD"
  },
  SnacksInputNormal = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  SnacksInputTitle = {
    bg = "#070614",
    fg = "#FB9B00"
  },
  SnacksNotifierBorderDebug = {
    bg = "#070614",
    fg = "#2d2e52"
  },
  SnacksNotifierBorderError = {
    bg = "#070614",
    fg = "#630736"
  },
  SnacksNotifierBorderInfo = {
    bg = "#070614",
    fg = "#292868"
  },
  SnacksNotifierBorderTrace = {
    bg = "#070614",
    fg = "#3c2669"
  },
  SnacksNotifierBorderWarn = {
    bg = "#070614",
    fg = "#6c4516"
  },
  SnacksNotifierDebug = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  SnacksNotifierError = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  SnacksNotifierHistory = "NormalFloat",
  SnacksNotifierIconDebug = {
    bg = "#070614",
    fg = "#5c6296"
  },
  SnacksNotifierIconError = {
    bg = "#070614",
    fg = "#E50050"
  },
  SnacksNotifierIconInfo = {
    bg = "#070614",
    fg = "#5352CD"
  },
  SnacksNotifierIconTrace = {
    bg = "#070614",
    fg = "#834CCF"
  },
  SnacksNotifierIconWarn = {
    bg = "#070614",
    fg = "#FB9B00"
  },
  SnacksNotifierInfo = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  SnacksNotifierTitleDebug = {
    bg = "#070614",
    fg = "#5c6296"
  },
  SnacksNotifierTitleError = {
    bg = "#070614",
    fg = "#E50050"
  },
  SnacksNotifierTitleInfo = {
    bg = "#070614",
    fg = "#5352CD"
  },
  SnacksNotifierTitleTrace = {
    bg = "#070614",
    fg = "#834CCF"
  },
  SnacksNotifierTitleWarn = {
    bg = "#070614",
    fg = "#FB9B00"
  },
  SnacksNotifierTrace = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  SnacksNotifierWarn = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  SnacksPickerBoxTitle = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  SnacksPickerGitStatusAdded = {
    fg = "#2A8A6B"
  },
  SnacksPickerGitStatusCopied = {
    fg = "#FFD888"
  },
  SnacksPickerGitStatusDeleted = {
    fg = "#E50050"
  },
  SnacksPickerGitStatusIgnored = {
    fg = "#5c6296"
  },
  SnacksPickerGitStatusModified = {
    fg = "#FFD888"
  },
  SnacksPickerGitStatusRenamed = {
    fg = "#FFD888"
  },
  SnacksPickerGitStatusStaged = {
    fg = "#2A8A6B"
  },
  SnacksPickerGitStatusUnmerged = {
    fg = "#FFD888"
  },
  SnacksPickerGitStatusUntracked = {
    fg = "#5c6296"
  },
  SnacksPickerInputBorder = {
    bg = "#070614",
    fg = "#FB9B00"
  },
  SnacksPickerInputTitle = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  SnacksPickerMatch = "CurSearch",
  SnacksPickerPickWin = {
    bg = "#161440",
    bold = true,
    fg = "#bec8e8"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#FB9B00",
    bold = true,
    fg = "#bec8e8"
  },
  SnacksPickerSearch = "CurSearch",
  SnacksPickerSelected = {
    fg = "#D91C87"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#141336",
    fg = "#5352CD"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#191236",
    fg = "#834CCF"
  },
  SnacksProfilerIconInfo = {
    bg = "#222157",
    fg = "#5352CD"
  },
  SnacksProfilerIconTrace = {
    bg = "#221844",
    fg = "#834CCF"
  },
  SnacksZenIcon = {
    fg = "#D91C87"
  },
  Special = {
    fg = "#4948b4"
  },
  SpecialKey = {
    fg = "#5c6296"
  },
  SpellBad = {
    sp = "#E50050",
    undercurl = true
  },
  SpellCap = {
    sp = "#FB9B00",
    undercurl = true
  },
  SpellLocal = {
    sp = "#5352CD",
    undercurl = true
  },
  SpellRare = {
    sp = "#33D4B4",
    undercurl = true
  },
  Statement = {
    fg = "#D91C87"
  },
  StatusLine = {
    bg = "#09081a",
    fg = "#5c6296"
  },
  StatusLineNC = {
    bg = "#09081a",
    fg = "#312e55"
  },
  String = {
    fg = "#2A8A6B"
  },
  Substitute = {
    bg = "#691351",
    fg = "#bec8e8"
  },
  TabLine = {
    bg = "#09081a",
    fg = "#312e55"
  },
  TabLineFill = {
    bg = "#09081a"
  },
  TabLineSel = {
    bg = "#3F3BF5",
    fg = "#09081a"
  },
  Title = {
    bold = true,
    fg = "#3F3BF5"
  },
  Todo = {
    bg = "#5352CD",
    fg = "#0D0C25"
  },
  TreesitterContext = {
    bg = "#09081a"
  },
  TroubleCount = {
    bg = "#161440",
    fg = "#D91C87"
  },
  TroubleNormal = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  TroubleText = {
    fg = "#7e85b8"
  },
  Type = {
    fg = "#5352CD"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#09081a"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#FB9B00"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#3F3BF5"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#FFD888"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#D91C87"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#2A8A6B"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#33D4B4"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#834CCF"
  },
  VimwikiHeader7 = {
    bg = "NONE",
    bold = true,
    fg = "#E50050"
  },
  VimwikiHeader8 = {
    bg = "NONE",
    bold = true,
    fg = "#FB9B00"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#FB9B00"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#33D4B4"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#9AC1E5"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#9AC1E5"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#D91C87"
  },
  Visual = {
    bg = "#161440"
  },
  VisualNOS = {
    bg = "#161440"
  },
  WarningMsg = {
    fg = "#FB9B00"
  },
  WhichKey = {
    fg = "#FB9B00"
  },
  WhichKeyBorder = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  WhichKeyDesc = {
    fg = "#5352CD"
  },
  WhichKeyGroup = {
    fg = "#3F3BF5"
  },
  WhichKeyNormal = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  WhichKeySeparator = {
    fg = "#5c6296"
  },
  WhichKeyTitle = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  WhichKeyValue = {
    fg = "#5c6296"
  },
  Whitespace = {
    fg = "#312e55"
  },
  WildMenu = {
    bg = "#161440"
  },
  WinBar = {
    bg = "#09081a",
    fg = "#5c6296"
  },
  WinBarNC = {
    bg = "#09081a",
    fg = "#312e55"
  },
  WinSeparator = {
    bold = true,
    fg = "#09081a"
  },
  YaziFloat = "Normal",
  YaziFloatBorder = "Border",
  debugBreakpoint = {
    bg = "#141336",
    fg = "#5352CD"
  },
  debugPC = {
    bg = "#09081a"
  },
  diffAdded = {
    bg = "#111f30",
    fg = "#2A8A6B"
  },
  diffChanged = {
    bg = "#42393b",
    fg = "#FFD888"
  },
  diffFile = {
    fg = "#3F3BF5"
  },
  diffIndexLine = {
    fg = "#3F3BF5"
  },
  diffLine = {
    fg = "#5c6296"
  },
  diffNewFile = {
    bg = "#111f30",
    fg = "#5352CD"
  },
  diffOldFile = {
    bg = "#2d0a2b",
    fg = "#5352CD"
  },
  diffRemoved = {
    bg = "#2d0a2b",
    fg = "#E50050"
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#E50050"
  },
  healthSuccess = {
    fg = "#2A8A6B"
  },
  healthWarning = {
    fg = "#FB9B00"
  },
  helpCommand = {
    bg = "#161440",
    fg = "#3F3BF5"
  },
  helpExample = {
    fg = "#5c6296"
  },
  htmlH1 = {
    bold = true,
    fg = "#3F3BF5"
  },
  htmlH2 = {
    bold = true,
    fg = "#3F3BF5"
  },
  lCursor = {
    bg = "#bec8e8",
    fg = "#0D0C25"
  },
  qfFileName = {
    fg = "#3F3BF5"
  },
  qfLineNr = {
    fg = "#312e55"
  }
}
