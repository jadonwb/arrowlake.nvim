local colors = {
  _name = "arrowlake_light",
  _style = "light",
  backgrounds = {
    code = "#e3d7c7",
    color_column = "#DED0BF",
    dark = "#e3d7c7",
    darker = "#DED0BF",
    float = "#DED0BF",
    fold = "#DED0BF",
    highlight = "#d4c6b3",
    hover = "#d4c6b3",
    normal = "#ebe0cf",
    notification = "#DED0BF",
    popup = "#DED0BF",
    search = "#d4c6b3",
    search_current = "#d7a9b1",
    sidebar = "#DED0BF",
    statusline = "#e3d7c7",
    tabline = "#e3d7c7",
    tabline_fill = "#e3d7c7",
    visual = "#d4c6b3",
    winbar = "#e3d7c7"
  },
  bg = "#ebe0cf",
  bg_dark = "#e3d7c7",
  bg_darker = "#DED0BF",
  blue = "#4A74A8",
  border = {
    active = "#56AEA9",
    active_title = "#56AEA9",
    color = "#6660AF",
    split = "#e3d7c7",
    subtle = "#ad9b88",
    title = "#6660AF"
  },
  cyan = "#56AEA9",
  diagnostics = {
    error = "#BC495D",
    hint = "#56AEA9",
    info = "#4A74A8",
    success = "#4E7469",
    todo = "#4A74A8",
    trace = "#6660AF",
    warning = "#AE984C"
  },
  diff = {
    add = "#d3d0c0",
    change = "#ded0b2",
    delete = "#e4c9be",
    text = "#c2c4b4"
  },
  fg = "#54473f",
  fg_dark = "#6c5e55",
  fg_darker = "#87786c",
  fg_gutter = "#ad9b88",
  focus = "#56AEA9",
  foregrounds = {
    comment = "#87786c",
    dark = "#6c5e55",
    darker = "#87786c",
    indent = "#ad9b88",
    member = "#6c5e55",
    muted = "#ad9b88",
    normal = "#54473f",
    punctuation = "#6c5e55",
    sidebar = "#87786c",
    statusline = "#87786c",
    tabline = "#6660AF",
    winbar = "#87786c"
  },
  git = {
    add = "#4E7469",
    change = "#AE984C",
    delete = "#BC495D",
    ignore = "#87786c"
  },
  green = "#4E7469",
  magenta = "#C16C90",
  none = "NONE",
  orange = "#CF9978",
  primary = "#6660AF",
  purple = "#6660AF",
  rainbow = { "#6660AF", "#4A74A8", "#4E7469", "#AE984C", "#C16C90", "#56AEA9", "#BC495D", "#CF9978" },
  red = "#BC495D",
  secondary = "#4A74A8",
  selection = "#d4c6b3",
  special = "#6a8b89",
  status = {
    command = "#AE984C",
    inactive = "#DED0BF",
    insert = "#4E7469",
    normal = "#6660AF",
    replace = "#BC495D",
    terminal = "#56AEA9",
    visual = "#C16C90"
  },
  syntax = {
    constant = "#AE984C",
    constructor = "#C16C90",
    functions = "#6660AF",
    functions_builtin = "#7a73b4",
    keyword = "#C16C90",
    link = "#CF9978",
    macro = "#56AEA9",
    markup = "#CF9978",
    md_inline = "#4E7469",
    operator = "#6a8b89",
    parameter = "#CF9978",
    string = "#4E7469",
    string_doc = "#4E7469",
    string_escape = "#C16C90",
    type = "#4A74A8",
    type_builtin = "#6284ae",
    variable = "#54473f"
  },
  terminal = {
    black = "#DED0BF",
    black_bright = "#ad9b88",
    blue = "#4A74A8",
    blue_bright = "#3782cb",
    cyan = "#56AEA9",
    cyan_bright = "#2dc0ba",
    green = "#4E7469",
    green_bright = "#448474",
    magenta = "#C16C90",
    magenta_bright = "#db719f",
    red = "#BC495D",
    red_bright = "#e43b5f",
    white = "#87786c",
    white_bright = "#54473f",
    yellow = "#AE984C",
    yellow_bright = "#c2a525"
  },
  ui = {
    ai = "#CF9978",
    attention = "#C16C90",
    cursor_bg = "#54473f",
    cursor_fg = "#ebe0cf",
    footer = "#4A74A8",
    header = "#6660AF",
    icon = "#4A74A8",
    label = "#4A74A8",
    path = "#6660AF",
    prompt = "#6660AF"
  },
  yellow = "#AE984C"
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
    fg = "#BC495D"
  },
  ["@comment.hint"] = {
    fg = "#56AEA9"
  },
  ["@comment.info"] = {
    fg = "#4A74A8"
  },
  ["@comment.note"] = {
    fg = "#56AEA9"
  },
  ["@comment.todo"] = {
    fg = "#4A74A8"
  },
  ["@comment.warning"] = {
    fg = "#AE984C"
  },
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Special",
  ["@constant.macro"] = "Define",
  ["@constructor"] = {
    fg = "#C16C90"
  },
  ["@constructor.tsx"] = {
    fg = "#4A74A8"
  },
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdd",
  ["@function"] = "Function",
  ["@function.builtin"] = {
    bold = true,
    fg = "#7a73b4"
  },
  ["@function.call"] = "@function",
  ["@function.macro"] = "Macro",
  ["@function.method"] = "Function",
  ["@function.method.call"] = "@function.method",
  ["@keyword"] = {
    fg = "#C16C90",
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
    fg = "#6660AF"
  },
  ["@keyword.import"] = "Include",
  ["@keyword.operator"] = "@keyword",
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@label"] = {
    fg = "#4A74A8"
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
    sp = "#BC495D",
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
    fg = "#6284ae"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#6284ae"
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
    bg = "#ded3cc",
    bold = true,
    fg = "#6660AF"
  },
  ["@markup.heading.2.markdown"] = {
    bg = "#dbd5cb",
    bold = true,
    fg = "#4A74A8"
  },
  ["@markup.heading.3.markdown"] = {
    bg = "#dbd5c5",
    bold = true,
    fg = "#4E7469"
  },
  ["@markup.heading.4.markdown"] = {
    bg = "#e5d9c2",
    bold = true,
    fg = "#AE984C"
  },
  ["@markup.heading.5.markdown"] = {
    bg = "#e7d4c9",
    bold = true,
    fg = "#C16C90"
  },
  ["@markup.heading.6.markdown"] = {
    bg = "#dcdbcb",
    bold = true,
    fg = "#56AEA9"
  },
  ["@markup.heading.7.markdown"] = {
    bg = "#e6d1c4",
    bold = true,
    fg = "#BC495D"
  },
  ["@markup.heading.8.markdown"] = {
    bg = "#e8d9c6",
    bold = true,
    fg = "#CF9978"
  },
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = {
    fg = "#CF9978"
  },
  ["@markup.link.label"] = "SpecialChar",
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = "Underlined",
  ["@markup.list"] = {
    fg = "#CF9978"
  },
  ["@markup.list.checked"] = {
    fg = "#4E7469"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#CF9978"
  },
  ["@markup.list.unchecked"] = {
    fg = "#56AEA9"
  },
  ["@markup.math"] = "Special",
  ["@markup.raw"] = "String",
  ["@markup.raw.markdown_inline"] = {
    bg = "#e3d7c7",
    fg = "#4E7469"
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
    fg = "#C16C90"
  },
  ["@namespace.builtin"] = "@variable.builtin",
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.float"] = "Float",
  ["@operator"] = {
    fg = "#6a8b89"
  },
  ["@property"] = {
    fg = "#6c5e55"
  },
  ["@property.json"] = {
    fg = "#4A74A8"
  },
  ["@punctuation.bracket"] = {
    fg = "#6c5e55"
  },
  ["@punctuation.delimiter"] = {
    fg = "#6c5e55"
  },
  ["@punctuation.special"] = {
    fg = "#6a8b89"
  },
  ["@punctuation.special.markdown"] = {
    fg = "#CF9978"
  },
  ["@string"] = "String",
  ["@string.documentation"] = {
    fg = "#4E7469"
  },
  ["@string.escape"] = {
    fg = "#C16C90"
  },
  ["@string.regexp"] = {
    fg = "#6a8b89"
  },
  ["@tag"] = {
    fg = "#C16C90"
  },
  ["@tag.attribute"] = "@property",
  ["@tag.delimiter"] = "Delimiter",
  ["@tag.delimiter.tsx"] = {
    fg = "#7a94b4"
  },
  ["@tag.javascript"] = "@tag",
  ["@tag.tsx"] = "@tag",
  ["@type"] = "Type",
  ["@type.builtin"] = {
    fg = "#6284ae"
  },
  ["@type.definition"] = "Typedef",
  ["@type.qualifier"] = "@keyword",
  ["@variable"] = {
    fg = "#54473f"
  },
  ["@variable.builtin"] = {
    fg = "#C16C90"
  },
  ["@variable.member"] = {
    fg = "#6c5e55"
  },
  ["@variable.parameter"] = {
    fg = "#CF9978"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#b6896d"
  },
  ArrowlakeCommentFixme = {
    fg = "#BC495D"
  },
  ArrowlakeCommentNote = {
    fg = "#56AEA9"
  },
  ArrowlakeCommentPerf = {
    fg = "#C16C90"
  },
  ArrowlakeCommentTest = {
    fg = "#CF9978"
  },
  ArrowlakeCommentTodo = {
    fg = "#4A74A8"
  },
  ArrowlakeCommentWarn = {
    fg = "#AE984C"
  },
  BlinkCmpDoc = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  BlinkCmpDocBorder = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  BlinkCmpGhostText = {
    fg = "#ad9b88"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = "LspKindClass",
  BlinkCmpKindCodeium = {
    bg = "NONE",
    fg = "#CF9978"
  },
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#CF9978"
  },
  BlinkCmpKindDefault = {
    bg = "NONE",
    fg = "#6c5e55"
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
    fg = "#CF9978"
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#CF9978"
  },
  BlinkCmpKindText = "LspKindText",
  BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  BlinkCmpKindUnit = "LspKindUnit",
  BlinkCmpKindValue = "LspKindValue",
  BlinkCmpKindVariable = "LspKindVariable",
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#54473f"
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#ad9b88",
    strikethrough = true
  },
  BlinkCmpLabelMatch = "CurSearch",
  BlinkCmpMenu = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  BlinkCmpMenuBorder = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  BlinkCmpSignatureHelp = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  Bold = {
    bold = true,
    fg = "#54473f"
  },
  Border = {
    bg = "#ebe0cf",
    fg = "#6660AF"
  },
  Character = {
    fg = "#4E7469"
  },
  ColorColumn = {
    bg = "#DED0BF"
  },
  ColorfulWinSep = {
    fg = "#56AEA9"
  },
  Comment = {
    fg = "#87786c",
    italic = true
  },
  ComplHint = {
    fg = "#ad9b88"
  },
  Conceal = {
    fg = "#87786c"
  },
  Constant = {
    fg = "#AE984C"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#54473f",
    fg = "#ebe0cf"
  },
  CursorColumn = {
    bg = "#d4c6b3"
  },
  CursorIM = {
    bg = "#54473f",
    fg = "#ebe0cf"
  },
  CursorLine = {
    bg = "#d4c6b3"
  },
  CursorLineNr = {
    bold = true,
    fg = "#56AEA9"
  },
  DapStoppedLine = {
    bg = "#e5d9c2"
  },
  Debug = {
    fg = "#AE984C"
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = "#BC495D"
  },
  DiagnosticFloatingErrorLabel = {
    bg = "#BC495D",
    fg = "#DED0BF"
  },
  DiagnosticFloatingHintLabel = {
    bg = "#56AEA9",
    fg = "#DED0BF"
  },
  DiagnosticFloatingInfoLabel = {
    bg = "#4A74A8",
    fg = "#DED0BF"
  },
  DiagnosticFloatingWarnLabel = {
    bg = "#AE984C",
    fg = "#DED0BF"
  },
  DiagnosticHint = {
    fg = "#56AEA9"
  },
  DiagnosticInfo = {
    fg = "#4A74A8"
  },
  DiagnosticUnderlineError = {
    sp = "#BC495D",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#56AEA9",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#4A74A8",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#AE984C",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#ad9b88"
  },
  DiagnosticVirtualTextError = {
    bg = "#e6d1c4",
    fg = "#BC495D"
  },
  DiagnosticVirtualTextHint = {
    bg = "#dcdbcb",
    fg = "#56AEA9"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#dbd5cb",
    fg = "#4A74A8"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#e8dcc8",
    fg = "#AE984C"
  },
  DiagnosticWarn = {
    fg = "#AE984C"
  },
  DiffAdd = {
    bg = "#d3d0c0"
  },
  DiffChange = {
    bg = "#ded0b2"
  },
  DiffDelete = {
    bg = "#e4c9be"
  },
  DiffText = {
    bg = "#c2c4b4"
  },
  DiffviewCommitSelected = {
    bold = true,
    fg = "#56AEA9"
  },
  DiffviewDiffAddText = {
    bg = "#c2c4b4"
  },
  DiffviewDiffDeleteText = {
    bg = "#dfb9b1"
  },
  DiffviewDiffFill = {
    fg = "#87786c"
  },
  DiffviewFilePanelConflicts = {
    bold = true,
    link = "DiagnosticSignWarn"
  },
  DiffviewFilePanelDeletions = {
    bold = true,
    fg = "#BC495D"
  },
  DiffviewFilePanelInsertions = {
    bold = true,
    fg = "#4E7469"
  },
  DiffviewFilePanelSelected = {
    bold = true,
    fg = "#56AEA9"
  },
  DiffviewFilePanelTitle = {
    bold = true,
    fg = "#6660AF"
  },
  DiffviewFolderSign = {
    fg = "#4A74A8"
  },
  DiffviewPrimary = {
    fg = "#6660AF"
  },
  DiffviewReference = {
    fg = "#4A74A8"
  },
  DiffviewSecondary = {
    fg = "#4A74A8"
  },
  DiffviewSignColumn = "SignColumn",
  DiffviewStatusAdded = {
    fg = "#4E7469"
  },
  DiffviewStatusBroken = {
    fg = "#BC495D"
  },
  DiffviewStatusCopied = {
    fg = "#AE984C"
  },
  DiffviewStatusDeleted = {
    fg = "#BC495D"
  },
  DiffviewStatusModified = {
    fg = "#AE984C"
  },
  DiffviewStatusRenamed = {
    fg = "#AE984C"
  },
  DiffviewStatusTypeChange = {
    fg = "#AE984C"
  },
  DiffviewStatusUnknown = {
    fg = "#BC495D"
  },
  DiffviewStatusUnmerged = {
    fg = "#AE984C"
  },
  DiffviewStatusUntracked = {
    fg = "#4E7469"
  },
  Directory = {
    fg = "#6660AF"
  },
  EndOfBuffer = {
    fg = "#ebe0cf"
  },
  Error = {
    fg = "#BC495D"
  },
  ErrorMsg = {
    fg = "#BC495D"
  },
  FFFFileInfoLabel = {
    bg = "#DED0BF",
    fg = "#87786c"
  },
  FFFFileInfoMatchType = {
    bg = "#DED0BF",
    bold = true,
    fg = "#C16C90"
  },
  FFFFileInfoPath = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  FFFFileInfoScoreNeg = {
    bg = "#DED0BF",
    fg = "#BC495D"
  },
  FFFFileInfoScorePos = {
    bg = "#DED0BF",
    fg = "#4E7469"
  },
  FFFFileInfoSection = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  FFFFileInfoSeparator = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  FFFFileInfoSize = {
    bg = "#DED0BF",
    fg = "#AE984C"
  },
  FFFFileInfoTotalScore = {
    bg = "#DED0BF",
    bold = true,
    fg = "#54473f"
  },
  FFFFileInfoType = {
    bg = "#DED0BF",
    fg = "#4A74A8"
  },
  FFFFileInfoValue = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  FFFFileInfoValueDim = {
    bg = "#DED0BF",
    fg = "#ad9b88"
  },
  FFFGitDeleted = {
    fg = "#BC495D"
  },
  FFFGitIgnored = {
    fg = "#87786c"
  },
  FFFGitModified = {
    fg = "#AE984C"
  },
  FFFGitRenamed = {
    fg = "#AE984C"
  },
  FFFGitSignDeleted = {
    fg = "#BC495D"
  },
  FFFGitSignDeletedSelected = {
    bg = "#d4c6b3",
    fg = "#BC495D"
  },
  FFFGitSignIgnored = {
    fg = "#87786c"
  },
  FFFGitSignIgnoredSelected = {
    bg = "#d4c6b3",
    fg = "#87786c"
  },
  FFFGitSignModified = {
    fg = "#AE984C"
  },
  FFFGitSignModifiedSelected = {
    bg = "#d4c6b3",
    fg = "#AE984C"
  },
  FFFGitSignRenamed = {
    fg = "#AE984C"
  },
  FFFGitSignRenamedSelected = {
    bg = "#d4c6b3",
    fg = "#AE984C"
  },
  FFFGitSignStaged = {
    fg = "#4E7469"
  },
  FFFGitSignStagedSelected = {
    bg = "#d4c6b3",
    fg = "#4E7469"
  },
  FFFGitSignUntracked = {
    fg = "#4E7469"
  },
  FFFGitSignUntrackedSelected = {
    bg = "#d4c6b3",
    fg = "#4E7469"
  },
  FFFGitStaged = {
    fg = "#4E7469"
  },
  FFFGitUntracked = {
    fg = "#4E7469"
  },
  FFFSelected = {
    fg = "#C16C90"
  },
  FFFSelectedActive = {
    bg = "#d4c6b3",
    fg = "#56AEA9"
  },
  FlashBackdrop = {
    fg = "#87786c"
  },
  FlashLabel = {
    bg = "#C16C90",
    bold = true,
    fg = "#ebe0cf"
  },
  FloatBorder = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  FloatTitle = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  FoldColumn = {
    fg = "#87786c"
  },
  Folded = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  Foo = {
    bg = "#C16C90",
    fg = "#54473f"
  },
  Function = {
    bold = true,
    fg = "#6660AF"
  },
  GitSignsAdd = {
    fg = "#4E7469"
  },
  GitSignsChange = {
    fg = "#AE984C"
  },
  GitSignsDelete = {
    fg = "#BC495D"
  },
  GrugFarHelpHeader = {
    fg = "#87786c"
  },
  GrugFarHelpHeaderKey = {
    fg = "#CF9978"
  },
  GrugFarInputLabel = {
    fg = "#4A74A8"
  },
  GrugFarInputPlaceholder = {
    fg = "#87786c"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#AE984C"
  },
  GrugFarResultsHeader = {
    fg = "#56AEA9"
  },
  GrugFarResultsLineColumn = {
    fg = "#87786c"
  },
  GrugFarResultsLineNo = {
    fg = "#87786c"
  },
  GrugFarResultsMatch = {
    bg = "#d7a9b1",
    fg = "#54473f"
  },
  GrugFarResultsStats = {
    fg = "#6660AF"
  },
  Identifier = {
    fg = "#6c5e55"
  },
  IncSearch = {
    bg = "#d7a9b1",
    bold = true,
    fg = "#54473f"
  },
  Italic = {
    fg = "#54473f",
    italic = true
  },
  Keyword = {
    fg = "#C16C90",
    italic = true
  },
  LazyBold = {
    bold = true
  },
  LazyButton = {
    bg = "#d4c6b3",
    fg = "#54473f"
  },
  LazyButtonActive = {
    bg = "#d4c6b3",
    fg = "#54473f"
  },
  LazyComment = {
    fg = "#87786c"
  },
  LazyCommit = {
    fg = "#4E7469"
  },
  LazyCommitIssue = {
    fg = "#AE984C"
  },
  LazyCommitScope = {
    italic = true
  },
  LazyCommitType = {
    bold = true,
    fg = "#6660AF"
  },
  LazyDimmed = {
    fg = "#ad9b88"
  },
  LazyDir = {
    fg = "#6660AF"
  },
  LazyError = {
    fg = "#BC495D"
  },
  LazyH1 = {
    bg = "#d4c6b3",
    bold = true,
    fg = "#6660AF"
  },
  LazyH2 = {
    bold = true,
    fg = "#4A74A8"
  },
  LazyInfo = {
    fg = "#4A74A8"
  },
  LazyItalic = {
    italic = true
  },
  LazyLocal = {
    fg = "#4A74A8"
  },
  LazyNoCond = {
    fg = "#AE984C"
  },
  LazyNormal = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  LazyProgressDone = {
    bold = true,
    fg = "#C16C90"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#ad9b88"
  },
  LazyProp = {
    fg = "#ad9b88"
  },
  LazyReasonCmd = {
    fg = "#AE984C"
  },
  LazyReasonEvent = {
    fg = "#C16C90"
  },
  LazyReasonFt = {
    fg = "#4E7469"
  },
  LazyReasonImport = {
    fg = "#54473f"
  },
  LazyReasonKeys = {
    fg = "#56AEA9"
  },
  LazyReasonPlugin = {
    fg = "#6660AF"
  },
  LazyReasonRequire = {
    fg = "#4A74A8"
  },
  LazyReasonRuntime = {
    fg = "#CF9978"
  },
  LazyReasonSource = {
    fg = "#4E7469"
  },
  LazyReasonStart = {
    fg = "#6c5e55"
  },
  LazySpecial = {
    fg = "#CF9978"
  },
  LazyTaskOutput = {
    fg = "#87786c"
  },
  LazyUrl = {
    fg = "#CF9978"
  },
  LazyValue = {
    fg = "#4E7469"
  },
  LazyWarning = {
    fg = "#AE984C"
  },
  LineNr = {
    fg = "#ad9b88"
  },
  LineNrAbove = {
    fg = "#ad9b88"
  },
  LineNrBelow = {
    fg = "#ad9b88"
  },
  LspCodeLens = {
    fg = "#87786c"
  },
  LspInfoBorder = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  LspInlayHint = {
    bg = "#e3d7c7",
    fg = "#87786c"
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
    bg = "#d4c6b3"
  },
  LspReferenceText = {
    bg = "#d4c6b3"
  },
  LspReferenceWrite = {
    bg = "#d4c6b3"
  },
  LspSignatureActiveParameter = {
    bg = "#d4c6b3",
    bold = true,
    fg = "#CF9978"
  },
  MasonHeader = {
    bg = "#CF9978",
    fg = "#54473f"
  },
  MasonHeaderSecondary = {
    bg = "#56AEA9",
    fg = "#54473f"
  },
  MasonHighlight = {
    fg = "#56AEA9"
  },
  MasonHighlightBlock = {
    bg = "#56AEA9",
    fg = "#54473f"
  },
  MasonHighlightBlockBold = {
    bg = "#56AEA9",
    bold = true,
    cterm = {
      bold = true
    },
    default = true,
    fg = "#54473f"
  },
  MasonHighlightBlockBoldSecondary = {
    bg = "#CF9978",
    bold = true,
    cterm = {
      bold = true
    },
    default = true,
    fg = "#54473f"
  },
  MasonHighlightBlockSecondary = {
    bg = "#CF9978",
    fg = "#54473f"
  },
  MasonHighlightSecondary = {
    fg = "#CF9978"
  },
  MasonLink = {
    fg = "#CF9978"
  },
  MasonMuted = {
    fg = "#ad9b88"
  },
  MasonMutedBlock = {
    bg = "#ad9b88",
    fg = "#54473f"
  },
  MasonMutedBlockBold = {
    bg = "#ad9b88",
    bold = true,
    cterm = {
      bold = true
    },
    default = true,
    fg = "#54473f"
  },
  MatchParen = {
    bold = true,
    fg = "#56AEA9"
  },
  MiniHipatternsFixme = {
    bg = "#BC495D",
    bold = true,
    fg = "#DED0BF"
  },
  MiniHipatternsHack = {
    bg = "#AE984C",
    bold = true,
    fg = "#DED0BF"
  },
  MiniHipatternsNote = {
    bg = "#56AEA9",
    bold = true,
    fg = "#DED0BF"
  },
  MiniHipatternsTodo = {
    bg = "#4A74A8",
    bold = true,
    fg = "#DED0BF"
  },
  MiniIconsAzure = {
    fg = "#56AEA9"
  },
  MiniIconsBlue = {
    fg = "#4A74A8"
  },
  MiniIconsCyan = {
    fg = "#56AEA9"
  },
  MiniIconsGreen = {
    fg = "#4E7469"
  },
  MiniIconsGrey = {
    fg = "#87786c"
  },
  MiniIconsOrange = {
    fg = "#CF9978"
  },
  MiniIconsPurple = {
    fg = "#6660AF"
  },
  MiniIconsRed = {
    fg = "#BC495D"
  },
  MiniIconsYellow = {
    fg = "#AE984C"
  },
  MiniSurround = {
    bg = "#56AEA9",
    fg = "#DED0BF"
  },
  ModeMsg = {
    bold = true,
    fg = "#6c5e55"
  },
  MoreMsg = {
    fg = "#6660AF"
  },
  MsgArea = {
    fg = "#6c5e55"
  },
  NonText = {
    fg = "#87786c"
  },
  Normal = {
    bg = "#ebe0cf",
    fg = "#54473f"
  },
  NormalFloat = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  NormalNC = {
    bg = "#ebe0cf",
    fg = "#54473f"
  },
  NormalSB = {
    bg = "#DED0BF",
    fg = "#87786c"
  },
  Operator = {
    fg = "#6a8b89"
  },
  Pmenu = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  PmenuMatch = {
    bg = "#DED0BF",
    fg = "#56AEA9"
  },
  PmenuMatchSel = {
    bg = "#d4c6b3",
    fg = "#56AEA9"
  },
  PmenuSbar = {
    bg = "#d7c9b9"
  },
  PmenuSel = {
    bg = "#d4c6b3"
  },
  PmenuThumb = {
    bg = "#ad9b88"
  },
  PreProc = {
    bold = true,
    fg = "#56AEA9"
  },
  Question = {
    fg = "#6660AF"
  },
  QuickFixLine = {
    bg = "#d4c6b3",
    bold = true
  },
  RenderMarkdownBullet = {
    fg = "#CF9978"
  },
  RenderMarkdownCode = {
    bg = "#e3d7c7"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#CF9978"
  },
  RenderMarkdownH1Bg = {
    bg = "#ded3cc"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#6660AF"
  },
  RenderMarkdownH2Bg = {
    bg = "#dbd5cb"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#4A74A8"
  },
  RenderMarkdownH3Bg = {
    bg = "#dbd5c5"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#4E7469"
  },
  RenderMarkdownH4Bg = {
    bg = "#e5d9c2"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#AE984C"
  },
  RenderMarkdownH5Bg = {
    bg = "#e7d4c9"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#C16C90"
  },
  RenderMarkdownH6Bg = {
    bg = "#dcdbcb"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#56AEA9"
  },
  RenderMarkdownH7Bg = {
    bg = "#e6d1c4"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#BC495D"
  },
  RenderMarkdownH8Bg = {
    bg = "#e8d9c6"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#CF9978"
  },
  RenderMarkdownTableHead = {
    fg = "#6660AF"
  },
  RenderMarkdownTableRow = {
    fg = "#4A74A8"
  },
  Search = {
    bg = "#d4c6b3",
    bold = true,
    fg = "#54473f"
  },
  SignColumn = {
    fg = "#ad9b88"
  },
  SignColumnSB = {
    bg = "#DED0BF",
    fg = "#ad9b88"
  },
  SnacksDashboardDesc = {
    fg = "#CF9978"
  },
  SnacksDashboardDir = {
    fg = "#87786c"
  },
  SnacksDashboardFooter = {
    fg = "#4A74A8"
  },
  SnacksDashboardHeader = {
    fg = "#6660AF"
  },
  SnacksDashboardIcon = {
    fg = "#4A74A8"
  },
  SnacksDashboardKey = {
    fg = "#56AEA9"
  },
  SnacksDashboardSpecial = {
    fg = "#C16C90"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksGhDiffHeader = {
    bg = "#dbd5cb",
    fg = "#4A74A8"
  },
  SnacksGhLabel = {
    bold = true,
    fg = "#4A74A8"
  },
  SnacksIndent = {
    fg = "#ad9b88",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#6660AF",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#4A74A8",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#4E7469",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#AE984C",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#C16C90",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#56AEA9",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#BC495D",
    nocombine = true
  },
  SnacksIndent8 = {
    fg = "#CF9978",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#56AEA9",
    nocombine = true
  },
  SnacksInputBorder = {
    bg = "#DED0BF",
    fg = "#56AEA9"
  },
  SnacksInputIcon = {
    fg = "#4A74A8"
  },
  SnacksInputNormal = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  SnacksInputTitle = {
    bg = "#DED0BF",
    fg = "#56AEA9"
  },
  SnacksNotifierBorderDebug = {
    bg = "#DED0BF",
    fg = "#c3b6a7"
  },
  SnacksNotifierBorderError = {
    bg = "#DED0BF",
    fg = "#d8a4a1"
  },
  SnacksNotifierBorderInfo = {
    bg = "#DED0BF",
    fg = "#abb5bf"
  },
  SnacksNotifierBorderTrace = {
    bg = "#DED0BF",
    fg = "#b6adc2"
  },
  SnacksNotifierBorderWarn = {
    bg = "#DED0BF",
    fg = "#d3c39b"
  },
  SnacksNotifierDebug = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  SnacksNotifierError = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  SnacksNotifierHistory = "NormalFloat",
  SnacksNotifierIconDebug = {
    bg = "#DED0BF",
    fg = "#87786c"
  },
  SnacksNotifierIconError = {
    bg = "#DED0BF",
    fg = "#BC495D"
  },
  SnacksNotifierIconInfo = {
    bg = "#DED0BF",
    fg = "#4A74A8"
  },
  SnacksNotifierIconTrace = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  SnacksNotifierIconWarn = {
    bg = "#DED0BF",
    fg = "#AE984C"
  },
  SnacksNotifierInfo = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  SnacksNotifierTitleDebug = {
    bg = "#DED0BF",
    fg = "#87786c"
  },
  SnacksNotifierTitleError = {
    bg = "#DED0BF",
    fg = "#BC495D"
  },
  SnacksNotifierTitleInfo = {
    bg = "#DED0BF",
    fg = "#4A74A8"
  },
  SnacksNotifierTitleTrace = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  SnacksNotifierTitleWarn = {
    bg = "#DED0BF",
    fg = "#AE984C"
  },
  SnacksNotifierTrace = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  SnacksNotifierWarn = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  SnacksPickerBoxTitle = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  SnacksPickerGitStatusAdded = {
    fg = "#4E7469"
  },
  SnacksPickerGitStatusCopied = {
    fg = "#AE984C"
  },
  SnacksPickerGitStatusDeleted = {
    fg = "#BC495D"
  },
  SnacksPickerGitStatusIgnored = {
    fg = "#87786c"
  },
  SnacksPickerGitStatusModified = {
    fg = "#AE984C"
  },
  SnacksPickerGitStatusRenamed = {
    fg = "#AE984C"
  },
  SnacksPickerGitStatusStaged = {
    fg = "#4E7469"
  },
  SnacksPickerGitStatusUnmerged = {
    fg = "#AE984C"
  },
  SnacksPickerGitStatusUntracked = {
    fg = "#87786c"
  },
  SnacksPickerInputBorder = {
    bg = "#DED0BF",
    fg = "#56AEA9"
  },
  SnacksPickerInputTitle = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  SnacksPickerMatch = "CurSearch",
  SnacksPickerPickWin = {
    bg = "#d4c6b3",
    bold = true,
    fg = "#54473f"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#56AEA9",
    bold = true,
    fg = "#54473f"
  },
  SnacksPickerSearch = "CurSearch",
  SnacksPickerSelected = {
    fg = "#C16C90"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#dbd5cb",
    fg = "#4A74A8"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#ded3cc",
    fg = "#6660AF"
  },
  SnacksProfilerIconInfo = {
    bg = "#bbc0c3",
    fg = "#4A74A8"
  },
  SnacksProfilerIconTrace = {
    bg = "#d3c9c9",
    fg = "#6660AF"
  },
  SnacksZenIcon = {
    fg = "#C16C90"
  },
  Special = {
    fg = "#6284ae"
  },
  SpecialKey = {
    fg = "#87786c"
  },
  SpellBad = {
    sp = "#BC495D",
    undercurl = true
  },
  SpellCap = {
    sp = "#AE984C",
    undercurl = true
  },
  SpellLocal = {
    sp = "#4A74A8",
    undercurl = true
  },
  SpellRare = {
    sp = "#56AEA9",
    undercurl = true
  },
  Statement = {
    fg = "#C16C90"
  },
  StatusLine = {
    bg = "#e3d7c7",
    fg = "#87786c"
  },
  StatusLineNC = {
    bg = "#e3d7c7",
    fg = "#ad9b88"
  },
  String = {
    fg = "#4E7469"
  },
  Substitute = {
    bg = "#d7a9b1",
    fg = "#54473f"
  },
  TabLine = {
    bg = "#e3d7c7",
    fg = "#ad9b88"
  },
  TabLineFill = {
    bg = "#e3d7c7"
  },
  TabLineSel = {
    bg = "#6660AF",
    fg = "#e3d7c7"
  },
  Title = {
    bold = true,
    fg = "#6660AF"
  },
  Todo = {
    bg = "#4A74A8",
    fg = "#ebe0cf"
  },
  TreesitterContext = {
    bg = "#e3d7c7"
  },
  TroubleCount = {
    bg = "#d4c6b3",
    fg = "#C16C90"
  },
  TroubleNormal = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  TroubleText = {
    fg = "#6c5e55"
  },
  Type = {
    fg = "#4A74A8"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#e3d7c7"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#56AEA9"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#6660AF"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#4A74A8"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#4E7469"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#AE984C"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#C16C90"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#56AEA9"
  },
  VimwikiHeader7 = {
    bg = "NONE",
    bold = true,
    fg = "#BC495D"
  },
  VimwikiHeader8 = {
    bg = "NONE",
    bold = true,
    fg = "#CF9978"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#56AEA9"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#CF9978"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#6a8b89"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#6a8b89"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#C16C90"
  },
  Visual = {
    bg = "#d4c6b3"
  },
  VisualNOS = {
    bg = "#d4c6b3"
  },
  WarningMsg = {
    fg = "#AE984C"
  },
  WhichKey = {
    fg = "#56AEA9"
  },
  WhichKeyBorder = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  WhichKeyDesc = {
    fg = "#4A74A8"
  },
  WhichKeyGroup = {
    fg = "#6660AF"
  },
  WhichKeyNormal = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  WhichKeySeparator = {
    fg = "#87786c"
  },
  WhichKeyTitle = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  WhichKeyValue = {
    fg = "#87786c"
  },
  Whitespace = {
    fg = "#ad9b88"
  },
  WildMenu = {
    bg = "#d4c6b3"
  },
  WinBar = {
    bg = "#e3d7c7",
    fg = "#87786c"
  },
  WinBarNC = {
    bg = "#e3d7c7",
    fg = "#ad9b88"
  },
  WinSeparator = {
    bold = true,
    fg = "#e3d7c7"
  },
  YaziFloat = "Normal",
  YaziFloatBorder = "Border",
  debugBreakpoint = {
    bg = "#dbd5cb",
    fg = "#4A74A8"
  },
  debugPC = {
    bg = "#e3d7c7"
  },
  diffAdded = {
    bg = "#d3d0c0",
    fg = "#4E7469"
  },
  diffChanged = {
    bg = "#ded0b2",
    fg = "#AE984C"
  },
  diffFile = {
    fg = "#6660AF"
  },
  diffIndexLine = {
    fg = "#6660AF"
  },
  diffLine = {
    fg = "#87786c"
  },
  diffNewFile = {
    bg = "#d3d0c0",
    fg = "#4A74A8"
  },
  diffOldFile = {
    bg = "#e4c9be",
    fg = "#4A74A8"
  },
  diffRemoved = {
    bg = "#e4c9be",
    fg = "#BC495D"
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#BC495D"
  },
  healthSuccess = {
    fg = "#4E7469"
  },
  healthWarning = {
    fg = "#AE984C"
  },
  helpCommand = {
    bg = "#d4c6b3",
    fg = "#6660AF"
  },
  helpExample = {
    fg = "#87786c"
  },
  htmlH1 = {
    bold = true,
    fg = "#6660AF"
  },
  htmlH2 = {
    bold = true,
    fg = "#6660AF"
  },
  lCursor = {
    bg = "#54473f",
    fg = "#ebe0cf"
  },
  qfFileName = {
    fg = "#6660AF"
  },
  qfLineNr = {
    fg = "#ad9b88"
  }
}
