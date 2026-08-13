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
    notification = "#e3d7c7",
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
  ALEErrorSign = {
    fg = "#BC495D"
  },
  ALEWarningSign = {
    fg = "#AE984C"
  },
  AerialArrayIcon = "LspKindArray",
  AerialBooleanIcon = "LspKindBoolean",
  AerialClassIcon = "LspKindClass",
  AerialColorIcon = "LspKindColor",
  AerialConstantIcon = "LspKindConstant",
  AerialConstructorIcon = "LspKindConstructor",
  AerialEnumIcon = "LspKindEnum",
  AerialEnumMemberIcon = "LspKindEnumMember",
  AerialEventIcon = "LspKindEvent",
  AerialFieldIcon = "LspKindField",
  AerialFileIcon = "LspKindFile",
  AerialFolderIcon = "LspKindFolder",
  AerialFunctionIcon = "LspKindFunction",
  AerialGuide = {
    fg = "#ad9b88"
  },
  AerialInterfaceIcon = "LspKindInterface",
  AerialKeyIcon = "LspKindKey",
  AerialKeywordIcon = "LspKindKeyword",
  AerialLine = "LspInlayHint",
  AerialMethodIcon = "LspKindMethod",
  AerialModuleIcon = "LspKindModule",
  AerialNamespaceIcon = "LspKindNamespace",
  AerialNormal = {
    bg = "NONE",
    fg = "#54473f"
  },
  AerialNullIcon = "LspKindNull",
  AerialNumberIcon = "LspKindNumber",
  AerialObjectIcon = "LspKindObject",
  AerialOperatorIcon = "LspKindOperator",
  AerialPackageIcon = "LspKindPackage",
  AerialPropertyIcon = "LspKindProperty",
  AerialReferenceIcon = "LspKindReference",
  AerialSnippetIcon = "LspKindSnippet",
  AerialStringIcon = "LspKindString",
  AerialStructIcon = "LspKindStruct",
  AerialTextIcon = "LspKindText",
  AerialTypeParameterIcon = "LspKindTypeParameter",
  AerialUnitIcon = "LspKindUnit",
  AerialValueIcon = "LspKindValue",
  AerialVariableIcon = "LspKindVariable",
  AlphaButtons = {
    fg = "#CF9978"
  },
  AlphaFooter = {
    fg = "#4A74A8"
  },
  AlphaHeader = {
    fg = "#6660AF"
  },
  AlphaHeaderLabel = {
    fg = "#56AEA9"
  },
  AlphaShortcut = {
    fg = "#56AEA9"
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
  BlinkCmpLabelMatch = {
    bg = "NONE",
    fg = "#56AEA9"
  },
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
  BufferAlternate = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  BufferAlternateADDED = {
    bg = "#DED0BF",
    fg = "#4E7469"
  },
  BufferAlternateCHANGED = {
    bg = "#DED0BF",
    fg = "#AE984C"
  },
  BufferAlternateDELETED = {
    bg = "#DED0BF",
    fg = "#BC495D"
  },
  BufferAlternateERROR = {
    bg = "#DED0BF",
    fg = "#BC495D"
  },
  BufferAlternateHINT = {
    bg = "#DED0BF",
    fg = "#56AEA9"
  },
  BufferAlternateINFO = {
    bg = "#DED0BF",
    fg = "#4A74A8"
  },
  BufferAlternateIndex = {
    bg = "#DED0BF",
    fg = "#4A74A8"
  },
  BufferAlternateMod = {
    bg = "#DED0BF",
    fg = "#AE984C"
  },
  BufferAlternateSign = {
    bg = "#DED0BF",
    fg = "#4A74A8"
  },
  BufferAlternateTarget = {
    bg = "#DED0BF",
    fg = "#C16C90"
  },
  BufferAlternateWARN = {
    bg = "#DED0BF",
    fg = "#AE984C"
  },
  BufferCurrent = {
    bg = "#ebe0cf",
    fg = "#54473f"
  },
  BufferCurrentADDED = {
    bg = "#ebe0cf",
    fg = "#4E7469"
  },
  BufferCurrentCHANGED = {
    bg = "#ebe0cf",
    fg = "#AE984C"
  },
  BufferCurrentDELETED = {
    bg = "#ebe0cf",
    fg = "#BC495D"
  },
  BufferCurrentERROR = {
    bg = "#ebe0cf",
    fg = "#BC495D"
  },
  BufferCurrentHINT = {
    bg = "#ebe0cf",
    fg = "#56AEA9"
  },
  BufferCurrentINFO = {
    bg = "#ebe0cf",
    fg = "#4A74A8"
  },
  BufferCurrentIndex = {
    bg = "#ebe0cf",
    fg = "#4A74A8"
  },
  BufferCurrentMod = {
    bg = "#ebe0cf",
    fg = "#AE984C"
  },
  BufferCurrentSign = {
    bg = "#ebe0cf",
    fg = "#ebe0cf"
  },
  BufferCurrentTarget = {
    bg = "#ebe0cf",
    fg = "#C16C90"
  },
  BufferCurrentWARN = {
    bg = "#ebe0cf",
    fg = "#AE984C"
  },
  BufferInactive = {
    bg = "#e2d6c4",
    fg = "#9b8d80"
  },
  BufferInactiveADDED = {
    bg = "#e2d6c4",
    fg = "#6d8a7d"
  },
  BufferInactiveCHANGED = {
    bg = "#e2d6c4",
    fg = "#baa666"
  },
  BufferInactiveDELETED = {
    bg = "#e2d6c4",
    fg = "#c56774"
  },
  BufferInactiveERROR = {
    bg = "#e2d6c4",
    fg = "#c56774"
  },
  BufferInactiveHINT = {
    bg = "#e2d6c4",
    fg = "#74b8b1"
  },
  BufferInactiveINFO = {
    bg = "#e2d6c4",
    fg = "#6a8ab0"
  },
  BufferInactiveIndex = {
    bg = "#e2d6c4",
    fg = "#87786c"
  },
  BufferInactiveMod = {
    bg = "#e2d6c4",
    fg = "#baa666"
  },
  BufferInactiveSign = {
    bg = "#e2d6c4",
    fg = "#ebe0cf"
  },
  BufferInactiveTarget = {
    bg = "#e2d6c4",
    fg = "#C16C90"
  },
  BufferInactiveWARN = {
    bg = "#e2d6c4",
    fg = "#baa666"
  },
  BufferLineIndicatorSelected = {
    fg = "#AE984C"
  },
  BufferOffset = {
    bg = "#e3d7c7",
    fg = "#87786c"
  },
  BufferTabpageFill = {
    bg = "#d9cbb9",
    fg = "#87786c"
  },
  BufferTabpages = {
    bg = "#e3d7c7",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#e3d7c7",
    fg = "#54473f"
  },
  BufferVisibleADDED = {
    bg = "#e3d7c7",
    fg = "#4E7469"
  },
  BufferVisibleCHANGED = {
    bg = "#e3d7c7",
    fg = "#AE984C"
  },
  BufferVisibleDELETED = {
    bg = "#e3d7c7",
    fg = "#BC495D"
  },
  BufferVisibleERROR = {
    bg = "#e3d7c7",
    fg = "#BC495D"
  },
  BufferVisibleHINT = {
    bg = "#e3d7c7",
    fg = "#56AEA9"
  },
  BufferVisibleINFO = {
    bg = "#e3d7c7",
    fg = "#4A74A8"
  },
  BufferVisibleIndex = {
    bg = "#e3d7c7",
    fg = "#4A74A8"
  },
  BufferVisibleMod = {
    bg = "#e3d7c7",
    fg = "#AE984C"
  },
  BufferVisibleSign = {
    bg = "#e3d7c7",
    fg = "#4A74A8"
  },
  BufferVisibleTarget = {
    bg = "#e3d7c7",
    fg = "#C16C90"
  },
  BufferVisibleWARN = {
    bg = "#e3d7c7",
    fg = "#AE984C"
  },
  Character = {
    fg = "#4E7469"
  },
  CmpDocumentation = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  CmpDocumentationBorder = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  CmpGhostText = {
    fg = "#ad9b88"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#54473f"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#ad9b88",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#56AEA9"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#56AEA9"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#CF9978"
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#CF9978"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#6c5e55"
  },
  CmpItemKindEnum = "LspKindEnum",
  CmpItemKindEnumMember = "LspKindEnumMember",
  CmpItemKindEvent = "LspKindEvent",
  CmpItemKindField = "LspKindField",
  CmpItemKindFile = "LspKindFile",
  CmpItemKindFolder = "LspKindFolder",
  CmpItemKindFunction = "LspKindFunction",
  CmpItemKindInterface = "LspKindInterface",
  CmpItemKindKey = "LspKindKey",
  CmpItemKindKeyword = "LspKindKeyword",
  CmpItemKindMethod = "LspKindMethod",
  CmpItemKindModule = "LspKindModule",
  CmpItemKindNamespace = "LspKindNamespace",
  CmpItemKindNull = "LspKindNull",
  CmpItemKindNumber = "LspKindNumber",
  CmpItemKindObject = "LspKindObject",
  CmpItemKindOperator = "LspKindOperator",
  CmpItemKindPackage = "LspKindPackage",
  CmpItemKindProperty = "LspKindProperty",
  CmpItemKindReference = "LspKindReference",
  CmpItemKindSnippet = "LspKindSnippet",
  CmpItemKindString = "LspKindString",
  CmpItemKindStruct = "LspKindStruct",
  CmpItemKindSupermaven = {
    bg = "NONE",
    fg = "#CF9978"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#CF9978"
  },
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = "#87786c"
  },
  CodeBlock = {
    bg = "#e3d7c7"
  },
  CodeiumSuggestion = {
    fg = "#ad9b88"
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
  CopilotAnnotation = {
    fg = "#ad9b88"
  },
  CopilotSuggestion = {
    fg = "#ad9b88"
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
  DashboardDesc = {
    fg = "#CF9978"
  },
  DashboardFiles = {
    fg = "#6660AF"
  },
  DashboardFooter = {
    fg = "#4A74A8"
  },
  DashboardHeader = {
    fg = "#6660AF"
  },
  DashboardIcon = {
    fg = "#CF9978"
  },
  DashboardKey = {
    fg = "#56AEA9"
  },
  DashboardMruIcon = {
    fg = "#C16C90"
  },
  DashboardMruTitle = {
    fg = "#CF9978"
  },
  DashboardProjectIcon = {
    fg = "#56AEA9"
  },
  DashboardProjectTitle = {
    fg = "#CF9978"
  },
  DashboardProjectTitleIcon = {
    fg = "#56AEA9"
  },
  DashboardShortCut = {
    fg = "#CF9978"
  },
  DashboardShortCutIcon = {
    fg = "#6660AF"
  },
  Debug = {
    fg = "#AE984C"
  },
  DefinitionCount = {
    fg = "#C16C90"
  },
  DefinitionIcon = {
    fg = "#6660AF"
  },
  Delimiter = "Special",
  DeltaDiffFileWinbarBase = {
    bg = "#ebe0cf",
    bold = true,
    fg = "#6660AF"
  },
  DeltaDiffFileWinbarCurrent = {
    bg = "#ebe0cf",
    bold = true,
    fg = "#56AEA9"
  },
  DeltaPickerBorder = {
    bg = "#ebe0cf",
    fg = "#6660AF"
  },
  DeltaPickerCursorLine = {
    bg = "#d4c6b3"
  },
  DeltaPickerDirectory = {
    fg = "#4A74A8"
  },
  DeltaPickerSectionHeader = {
    bg = "#ebe0cf",
    bold = true,
    fg = "#6660AF"
  },
  DeltaPickerTitle = {
    bg = "#ebe0cf",
    bold = true,
    fg = "#6660AF"
  },
  DeltaSpotlightPopupAddedText = {
    bg = "#c2c4b4"
  },
  DeltaSpotlightPopupLineNr = {
    fg = "#ad9b88"
  },
  DeltaSpotlightPopupRemovedText = {
    bg = "#dfb9b1"
  },
  DeltaSpotlightPopupTitle = {
    bg = "#DED0BF",
    bold = true,
    fg = "#6660AF"
  },
  DeltaSpotlightScratchDiffAdd = {
    bg = "#d3d0c0"
  },
  DeltaSpotlightScratchDiffChange = {
    bg = "#ded0b2"
  },
  DeltaSpotlightScratchDiffDelete = {
    bg = "#e4c9be"
  },
  DeltaSpotlightStatusStaged = {
    fg = "#4E7469"
  },
  DeltaSpotlightStatusUnstaged = {
    fg = "#AE984C"
  },
  DeltaSpotlightStatusUntracked = {
    fg = "#4E7469"
  },
  DeltaSpotlightWinbarNumericValue = {
    fg = "#4A74A8"
  },
  DeltaStatusAdded = {
    fg = "#4E7469"
  },
  DeltaStatusCopied = {
    fg = "#AE984C"
  },
  DeltaStatusDeleted = {
    fg = "#BC495D"
  },
  DeltaStatusModified = {
    fg = "#AE984C"
  },
  DeltaStatusRenamed = {
    fg = "#AE984C"
  },
  DeltaStatusUntracked = {
    fg = "#4E7469"
  },
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
  DiagnosticInformation = "DiagnosticInfo",
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
  DiagnosticWarning = "DiagnosticWarn",
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
  FzfLuaBorder = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#6c5e55"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#54473f"
  },
  FzfLuaFzfPointer = {
    fg = "#C16C90"
  },
  FzfLuaFzfSeparator = {
    bg = "#DED0BF",
    fg = "#56AEA9"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  FzfLuaTitle = {
    bg = "#DED0BF",
    fg = "#56AEA9"
  },
  GitGutterAdd = {
    fg = "#4E7469"
  },
  GitGutterAddLineNr = {
    fg = "#4E7469"
  },
  GitGutterChange = {
    fg = "#AE984C"
  },
  GitGutterChangeLineNr = {
    fg = "#AE984C"
  },
  GitGutterDelete = {
    fg = "#BC495D"
  },
  GitGutterDeleteLineNr = {
    fg = "#BC495D"
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
  GlyphPalette1 = {
    fg = "#BC495D"
  },
  GlyphPalette2 = {
    fg = "#4E7469"
  },
  GlyphPalette3 = {
    fg = "#AE984C"
  },
  GlyphPalette4 = {
    fg = "#4A74A8"
  },
  GlyphPalette6 = {
    fg = "#87786c"
  },
  GlyphPalette7 = {
    fg = "#54473f"
  },
  GlyphPalette9 = {
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
  Headline = "Headline1",
  Headline1 = {
    bg = "#e4dacd"
  },
  Headline2 = {
    bg = "#e3dbcd"
  },
  Headline3 = {
    bg = "#e3dbca"
  },
  Headline4 = {
    bg = "#e8dcc8"
  },
  Headline5 = {
    bg = "#e9dacc"
  },
  Headline6 = {
    bg = "#e4ddcd"
  },
  Headline7 = {
    bg = "#e9d8c9"
  },
  Headline8 = {
    bg = "#eadccb"
  },
  HopNextKey = {
    bold = true,
    fg = "#C16C90"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#56AEA9"
  },
  HopNextKey2 = {
    fg = "#92c2b8"
  },
  HopUnmatched = {
    fg = "#87786c"
  },
  IblIndent = {
    fg = "#ad9b88",
    nocombine = true
  },
  IblScope = {
    fg = "#56AEA9",
    nocombine = true
  },
  Identifier = {
    fg = "#6c5e55"
  },
  IlluminatedWordRead = {
    bg = "#d4c6b3"
  },
  IlluminatedWordText = {
    bg = "#d4c6b3"
  },
  IlluminatedWordWrite = {
    bg = "#d4c6b3"
  },
  IncSearch = {
    bg = "#d7a9b1",
    fg = "#54473f"
  },
  InclineNormal = "StatusLine",
  InclineNormalNC = "StatusLineNC",
  IndentBlanklineChar = {
    fg = "#ad9b88",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#56AEA9",
    nocombine = true
  },
  IndentLine = {
    fg = "#ad9b88",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#56AEA9",
    nocombine = true
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
  LeapBackdrop = {
    fg = "#87786c"
  },
  LeapLabel = {
    bold = true,
    fg = "#C16C90"
  },
  LeapMatch = {
    bg = "#C16C90",
    bold = true,
    fg = "#54473f"
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
  LspFloatWinBorder = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  LspFloatWinNormal = {
    bg = "#DED0BF"
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
  LspSagaBorderTitle = {
    fg = "#CF9978"
  },
  LspSagaCodeActionBorder = {
    fg = "#6660AF"
  },
  LspSagaCodeActionContent = {
    fg = "#C16C90"
  },
  LspSagaCodeActionTitle = {
    fg = "#4A74A8"
  },
  LspSagaDefPreviewBorder = {
    fg = "#56AEA9"
  },
  LspSagaFinderSelection = {
    bg = "#d4c6b3",
    fg = "#54473f"
  },
  LspSagaHoverBorder = {
    fg = "#6660AF"
  },
  LspSagaRenameBorder = {
    fg = "#56AEA9"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#6660AF"
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
  MiniAnimateCursor = {
    nocombine = true,
    reverse = true
  },
  MiniAnimateNormalFloat = "NormalFloat",
  MiniClueBorder = "FloatBorder",
  MiniClueDescGroup = "DiagnosticFloatingWarn",
  MiniClueDescSingle = "NormalFloat",
  MiniClueNextKey = "DiagnosticFloatingHint",
  MiniClueNextKeyWithPostkeys = "DiagnosticFloatingError",
  MiniClueSeparator = "DiagnosticFloatingInfo",
  MiniClueTitle = "FloatTitle",
  MiniCompletionActiveParameter = {
    underline = true
  },
  MiniCursorword = {
    bg = "#ad9b88"
  },
  MiniCursorwordCurrent = {
    bg = "#ad9b88"
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#BC495D",
    fg = "#DED0BF"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#4E7469",
    fg = "#DED0BF"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#4E7469"
  },
  MiniDiffSignChange = {
    fg = "#AE984C"
  },
  MiniDiffSignDelete = {
    fg = "#BC495D"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#54473f"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#DED0BF",
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
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#56AEA9",
    nocombine = true
  },
  MiniJump = {
    bg = "#C16C90",
    fg = "#ebe0cf"
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#C16C90",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#e3d7c7",
    fg = "#56AEA9",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#56AEA9",
    nocombine = true
  },
  MiniMapNormal = "NormalFloat",
  MiniMapSymbolCount = "Special",
  MiniMapSymbolLine = "Title",
  MiniMapSymbolView = "Delimiter",
  MiniNotifyBorder = "FloatBorder",
  MiniNotifyNormal = "NormalFloat",
  MiniNotifyTitle = "FloatTitle",
  MiniOperatorsExchangeFrom = "IncSearch",
  MiniPickBorder = "FloatBorder",
  MiniPickBorderBusy = "DiagnosticFloatingWarn",
  MiniPickBorderText = {
    bg = "#DED0BF",
    fg = "#56AEA9"
  },
  MiniPickHeader = "DiagnosticFloatingHint",
  MiniPickIconDirectory = "Directory",
  MiniPickIconFile = "MiniPickNormal",
  MiniPickMatchCurrent = "CursorLine",
  MiniPickMatchMarked = "Visual",
  MiniPickMatchRanges = "DiagnosticFloatingHint",
  MiniPickNormal = "NormalFloat",
  MiniPickPreviewLine = "CursorLine",
  MiniPickPreviewRegion = "IncSearch",
  MiniPickPrompt = {
    bg = "#DED0BF",
    fg = "#4A74A8"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#AE984C",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#6660AF"
  },
  MiniStarterInactive = {
    fg = "#87786c",
    italic = true
  },
  MiniStarterItem = {
    bg = "#ebe0cf",
    fg = "#54473f"
  },
  MiniStarterItemBullet = {
    fg = "#6660AF"
  },
  MiniStarterItemPrefix = {
    fg = "#AE984C"
  },
  MiniStarterQuery = {
    fg = "#4A74A8"
  },
  MiniStarterSection = {
    fg = "#4A74A8"
  },
  MiniStatuslineDevinfo = {
    bg = "#e3d7c7",
    fg = "#6c5e55"
  },
  MiniStatuslineFileinfo = {
    bg = "#e3d7c7",
    fg = "#6c5e55"
  },
  MiniStatuslineFilename = {
    bg = "#e3d7c7",
    fg = "#6c5e55"
  },
  MiniStatuslineInactive = {
    bg = "#e3d7c7",
    fg = "#6660AF"
  },
  MiniStatuslineModeCommand = {
    bg = "#AE984C",
    bold = true,
    fg = "#e3d7c7"
  },
  MiniStatuslineModeInsert = {
    bg = "#4E7469",
    bold = true,
    fg = "#e3d7c7"
  },
  MiniStatuslineModeNormal = {
    bg = "#6660AF",
    bold = true,
    fg = "#e3d7c7"
  },
  MiniStatuslineModeOther = {
    bg = "#56AEA9",
    bold = true,
    fg = "#e3d7c7"
  },
  MiniStatuslineModeReplace = {
    bg = "#BC495D",
    bold = true,
    fg = "#e3d7c7"
  },
  MiniStatuslineModeVisual = {
    bg = "#C16C90",
    bold = true,
    fg = "#e3d7c7"
  },
  MiniSurround = {
    bg = "#56AEA9",
    fg = "#DED0BF"
  },
  MiniTablineCurrent = {
    bg = "#d4c6b3",
    fg = "#54473f"
  },
  MiniTablineFill = {
    bg = "#e3d7c7"
  },
  MiniTablineHidden = {
    bg = "#e3d7c7",
    fg = "#87786c"
  },
  MiniTablineModifiedCurrent = {
    bg = "#d4c6b3",
    fg = "#AE984C"
  },
  MiniTablineModifiedHidden = {
    bg = "#e3d7c7",
    fg = "#c0ae73"
  },
  MiniTablineModifiedVisible = {
    bg = "#e3d7c7",
    fg = "#AE984C"
  },
  MiniTablineTabpagesection = {
    bg = "#d4c6b3",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#e3d7c7",
    fg = "#54473f"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#BC495D"
  },
  MiniTestPass = {
    bold = true,
    fg = "#4E7469"
  },
  MiniTrailspace = {
    bg = "#BC495D"
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
  NavicIconsArray = "LspKindArray",
  NavicIconsBoolean = "LspKindBoolean",
  NavicIconsClass = "LspKindClass",
  NavicIconsColor = "LspKindColor",
  NavicIconsConstant = "LspKindConstant",
  NavicIconsConstructor = "LspKindConstructor",
  NavicIconsEnum = "LspKindEnum",
  NavicIconsEnumMember = "LspKindEnumMember",
  NavicIconsEvent = "LspKindEvent",
  NavicIconsField = "LspKindField",
  NavicIconsFile = "LspKindFile",
  NavicIconsFolder = "LspKindFolder",
  NavicIconsFunction = "LspKindFunction",
  NavicIconsInterface = "LspKindInterface",
  NavicIconsKey = "LspKindKey",
  NavicIconsKeyword = "LspKindKeyword",
  NavicIconsMethod = "LspKindMethod",
  NavicIconsModule = "LspKindModule",
  NavicIconsNamespace = "LspKindNamespace",
  NavicIconsNull = "LspKindNull",
  NavicIconsNumber = "LspKindNumber",
  NavicIconsObject = "LspKindObject",
  NavicIconsOperator = "LspKindOperator",
  NavicIconsPackage = "LspKindPackage",
  NavicIconsProperty = "LspKindProperty",
  NavicIconsReference = "LspKindReference",
  NavicIconsSnippet = "LspKindSnippet",
  NavicIconsString = "LspKindString",
  NavicIconsStruct = "LspKindStruct",
  NavicIconsText = "LspKindText",
  NavicIconsTypeParameter = "LspKindTypeParameter",
  NavicIconsUnit = "LspKindUnit",
  NavicIconsValue = "LspKindValue",
  NavicIconsVariable = "LspKindVariable",
  NavicSeparator = {
    bg = "NONE",
    fg = "#54473f"
  },
  NavicText = {
    bg = "NONE",
    fg = "#54473f"
  },
  NeoTreeDimText = {
    fg = "#ad9b88"
  },
  NeoTreeFileName = {
    fg = "#87786c"
  },
  NeoTreeGitModified = {
    fg = "#AE984C"
  },
  NeoTreeGitStaged = {
    fg = "#4E7469"
  },
  NeoTreeGitUntracked = {
    fg = "#4E7469"
  },
  NeoTreeNormal = {
    bg = "#DED0BF",
    fg = "#87786c"
  },
  NeoTreeNormalNC = {
    bg = "#DED0BF",
    fg = "#87786c"
  },
  NeoTreeTabActive = {
    bg = "#DED0BF",
    bold = true,
    fg = "#56AEA9"
  },
  NeoTreeTabInactive = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#DED0BF",
    fg = "#e3d7c7"
  },
  NeogitBranch = {
    fg = "#6660AF"
  },
  NeogitDiffAddHighlight = {
    bg = "#d3d0c0",
    fg = "#4E7469"
  },
  NeogitDiffContextHighlight = {
    bg = "#d4c6b3",
    fg = "#6c5e55"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#e4c9be",
    fg = "#BC495D"
  },
  NeogitHunkHeader = {
    bg = "#d4c6b3",
    fg = "#54473f"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#d4c6b3",
    fg = "#6660AF"
  },
  NeogitRemote = {
    fg = "#C16C90"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#C16C90"
  },
  NeotestBorder = {
    fg = "#6660AF"
  },
  NeotestDir = {
    fg = "#6660AF"
  },
  NeotestExpandMarker = {
    fg = "#87786c"
  },
  NeotestFailed = {
    fg = "#BC495D"
  },
  NeotestFile = {
    fg = "#CF9978"
  },
  NeotestFocused = {
    fg = "#56AEA9"
  },
  NeotestIndent = {
    fg = "#ad9b88"
  },
  NeotestMarked = {
    fg = "#4A74A8"
  },
  NeotestNamespace = {
    fg = "#56AEA9"
  },
  NeotestPassed = {
    fg = "#4E7469"
  },
  NeotestRunning = {
    fg = "#56AEA9"
  },
  NeotestSkipped = {
    fg = "#87786c"
  },
  NeotestTarget = {
    fg = "#4A74A8"
  },
  NeotestTest = {
    fg = "#87786c"
  },
  NeotestWinSelect = {
    fg = "#C16C90"
  },
  NoiceCmdlineIconInput = {
    fg = "#4A74A8"
  },
  NoiceCmdlineIconLua = {
    fg = "#4A74A8"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#56AEA9"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#56AEA9"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#56AEA9"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#4A74A8"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#6c5e55"
  },
  NoiceCompletionItemKindEnum = "LspKindEnum",
  NoiceCompletionItemKindEnumMember = "LspKindEnumMember",
  NoiceCompletionItemKindEvent = "LspKindEvent",
  NoiceCompletionItemKindField = "LspKindField",
  NoiceCompletionItemKindFile = "LspKindFile",
  NoiceCompletionItemKindFolder = "LspKindFolder",
  NoiceCompletionItemKindFunction = "LspKindFunction",
  NoiceCompletionItemKindInterface = "LspKindInterface",
  NoiceCompletionItemKindKey = "LspKindKey",
  NoiceCompletionItemKindKeyword = "LspKindKeyword",
  NoiceCompletionItemKindMethod = "LspKindMethod",
  NoiceCompletionItemKindModule = "LspKindModule",
  NoiceCompletionItemKindNamespace = "LspKindNamespace",
  NoiceCompletionItemKindNull = "LspKindNull",
  NoiceCompletionItemKindNumber = "LspKindNumber",
  NoiceCompletionItemKindObject = "LspKindObject",
  NoiceCompletionItemKindOperator = "LspKindOperator",
  NoiceCompletionItemKindPackage = "LspKindPackage",
  NoiceCompletionItemKindProperty = "LspKindProperty",
  NoiceCompletionItemKindReference = "LspKindReference",
  NoiceCompletionItemKindSnippet = "LspKindSnippet",
  NoiceCompletionItemKindString = "LspKindString",
  NoiceCompletionItemKindStruct = "LspKindStruct",
  NoiceCompletionItemKindText = "LspKindText",
  NoiceCompletionItemKindTypeParameter = "LspKindTypeParameter",
  NoiceCompletionItemKindUnit = "LspKindUnit",
  NoiceCompletionItemKindValue = "LspKindValue",
  NoiceCompletionItemKindVariable = "LspKindVariable",
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
  NotifyBackground = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  NotifyDEBUGBody = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  NotifyDEBUGBorder = {
    bg = "#DED0BF",
    fg = "#cdc1b1"
  },
  NotifyDEBUGIcon = {
    fg = "#87786c"
  },
  NotifyDEBUGTitle = {
    fg = "#87786c"
  },
  NotifyERRORBody = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  NotifyERRORBorder = {
    bg = "#DED0BF",
    fg = "#ddb3ad"
  },
  NotifyERRORIcon = {
    fg = "#BC495D"
  },
  NotifyERRORTitle = {
    fg = "#BC495D"
  },
  NotifyINFOBody = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  NotifyINFOBorder = {
    bg = "#DED0BF",
    fg = "#bbc0c3"
  },
  NotifyINFOIcon = {
    fg = "#4A74A8"
  },
  NotifyINFOTitle = {
    fg = "#4A74A8"
  },
  NotifyTRACEBody = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  NotifyTRACEBorder = {
    bg = "#DED0BF",
    fg = "#c3bac5"
  },
  NotifyTRACEIcon = {
    fg = "#6660AF"
  },
  NotifyTRACETitle = {
    fg = "#6660AF"
  },
  NotifyWARNBody = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  NotifyWARNBorder = {
    bg = "#DED0BF",
    fg = "#d9caa8"
  },
  NotifyWARNIcon = {
    fg = "#AE984C"
  },
  NotifyWARNTitle = {
    fg = "#AE984C"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#6660AF"
  },
  NvimTreeGitDeleted = {
    fg = "#BC495D"
  },
  NvimTreeGitDirty = {
    fg = "#AE984C"
  },
  NvimTreeGitNew = {
    fg = "#4E7469"
  },
  NvimTreeImageFile = {
    fg = "#CF9978"
  },
  NvimTreeIndentMarker = {
    fg = "#ad9b88"
  },
  NvimTreeNormal = {
    bg = "#DED0BF",
    fg = "#87786c"
  },
  NvimTreeNormalNC = {
    bg = "#DED0BF",
    fg = "#87786c"
  },
  NvimTreeOpenedFile = {
    bg = "#d4c6b3"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#6660AF"
  },
  NvimTreeSpecialFile = {
    fg = "#C16C90",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#CF9978"
  },
  NvimTreeWinSeparator = {
    fg = "#e3d7c7"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#4A74A8"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#AE984C"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#C16C90"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#ded3cc",
    fg = "#6660AF"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#4A74A8"
  },
  Operator = {
    fg = "#6a8b89"
  },
  PiAgentResponseLabel = {
    bold = true,
    fg = "#CF9978"
  },
  PiAttachmentFilename = {
    fg = "#CF9978",
    italic = true
  },
  PiAttachmentIcon = {
    fg = "#CF9978"
  },
  PiBusy = {
    bold = true,
    fg = "#CF9978"
  },
  PiBusyTime = {
    fg = "#ad9b88"
  },
  PiChatAttachmentsWinbar = {
    bg = "#e3d7c7"
  },
  PiChatAttachmentsWinbarTitle = {
    bold = true,
    fg = "#87786c"
  },
  PiChatHistoryFloatTitle = {
    bg = "#6660AF",
    bold = true,
    fg = "#ebe0cf"
  },
  PiChatHistoryWinbar = {
    bg = "#e3d7c7"
  },
  PiChatHistoryWinbarTitle = {
    bg = "#6660AF",
    bold = true,
    fg = "#ebe0cf"
  },
  PiChatPromptFloatAttentionTitle = {
    bold = true,
    fg = "#56AEA9"
  },
  PiChatPromptWinbar = {
    bg = "#e3d7c7"
  },
  PiChatPromptWinbarAttentionTitle = {
    bold = true,
    fg = "#56AEA9"
  },
  PiChatPromptWinbarTitle = {
    bold = true,
    fg = "#87786c"
  },
  PiDialogSelected = {
    bg = "#ebe0cf"
  },
  PiDialogTitle = {
    bold = true,
    fg = "#6660AF"
  },
  PiDiffAdd = {
    bg = "#d3d0c0"
  },
  PiDiffDelete = {
    bg = "#e4c9be"
  },
  PiDiffLineNr = {
    fg = "#ad9b88"
  },
  PiDiffReviewNote = {
    fg = "#56AEA9"
  },
  PiDiffWinbar = {
    bg = "#e3d7c7"
  },
  PiDiffWinbarCurrent = {
    bold = true,
    fg = "#87786c"
  },
  PiDiffWinbarHint = {
    fg = "#87786c"
  },
  PiDiffWinbarProposed = {
    bold = true,
    fg = "#87786c"
  },
  PiError = {
    fg = "#BC495D"
  },
  PiFloat = {
    bg = "#ebe0cf"
  },
  PiFloatBorder = {
    bg = "#ebe0cf",
    fg = "#6660AF"
  },
  PiMention = {
    fg = "#4A74A8",
    underline = true
  },
  PiMessageAttachments = {
    fg = "#CF9978",
    italic = true
  },
  PiMessageDateTime = {
    fg = "#ad9b88"
  },
  PiStatusLine = {
    fg = "#ad9b88"
  },
  PiStatusLineAttention = {
    bold = true,
    fg = "#56AEA9"
  },
  PiStatusLineError = {
    fg = "#BC495D"
  },
  PiStatusLineWarning = {
    fg = "#AE984C"
  },
  PiToolBorder = {
    fg = "#ad9b88"
  },
  PiToolCall = {
    fg = "#6c5e55"
  },
  PiToolCollapsed = {
    fg = "#ad9b88",
    italic = true
  },
  PiToolError = {
    fg = "#BC495D",
    italic = true
  },
  PiToolHeader = {
    bold = true,
    fg = "#4A74A8"
  },
  PiToolOutput = {
    fg = "#54473f"
  },
  PiToolStatus = {
    fg = "#4E7469",
    italic = true
  },
  PiUserMessageLabel = {
    bold = true,
    fg = "#4A74A8"
  },
  PiWarning = {
    fg = "#AE984C",
    italic = true
  },
  PiWelcome = {
    fg = "#54473f"
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
  RainbowDelimiterBlue = {
    fg = "#4A74A8"
  },
  RainbowDelimiterCyan = {
    fg = "#56AEA9"
  },
  RainbowDelimiterGreen = {
    fg = "#4E7469"
  },
  RainbowDelimiterOrange = {
    fg = "#CF9978"
  },
  RainbowDelimiterRed = {
    fg = "#BC495D"
  },
  RainbowDelimiterViolet = {
    fg = "#6660AF"
  },
  RainbowDelimiterYellow = {
    fg = "#AE984C"
  },
  ReferencesCount = {
    fg = "#C16C90"
  },
  ReferencesIcon = {
    fg = "#6660AF"
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
  ScrollbarError = {
    bg = "NONE",
    fg = "#BC495D"
  },
  ScrollbarErrorHandle = {
    bg = "#d4c6b3",
    fg = "#BC495D"
  },
  ScrollbarHandle = {
    bg = "#d4c6b3",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#56AEA9"
  },
  ScrollbarHintHandle = {
    bg = "#d4c6b3",
    fg = "#56AEA9"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#4A74A8"
  },
  ScrollbarInfoHandle = {
    bg = "#d4c6b3",
    fg = "#4A74A8"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#6660AF"
  },
  ScrollbarMiscHandle = {
    bg = "#d4c6b3",
    fg = "#6660AF"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#56AEA9"
  },
  ScrollbarSearchHandle = {
    bg = "#d4c6b3",
    fg = "#56AEA9"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#AE984C"
  },
  ScrollbarWarnHandle = {
    bg = "#d4c6b3",
    fg = "#AE984C"
  },
  Search = {
    bg = "#d4c6b3",
    fg = "#54473f"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#4E7469"
  },
  SidekickSignChange = {
    fg = "#AE984C"
  },
  SidekickSignDelete = {
    fg = "#BC495D"
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
    bg = "#e3d7c7",
    fg = "#c3b6a7"
  },
  SnacksNotifierBorderError = {
    bg = "#e3d7c7",
    fg = "#d8a4a1"
  },
  SnacksNotifierBorderInfo = {
    bg = "#e3d7c7",
    fg = "#abb5bf"
  },
  SnacksNotifierBorderTrace = {
    bg = "#e3d7c7",
    fg = "#b6adc2"
  },
  SnacksNotifierBorderWarn = {
    bg = "#e3d7c7",
    fg = "#d3c39b"
  },
  SnacksNotifierDebug = {
    bg = "#e3d7c7",
    fg = "#54473f"
  },
  SnacksNotifierError = {
    bg = "#e3d7c7",
    fg = "#54473f"
  },
  SnacksNotifierIconDebug = {
    bg = "#e3d7c7",
    fg = "#87786c"
  },
  SnacksNotifierIconError = {
    bg = "#e3d7c7",
    fg = "#BC495D"
  },
  SnacksNotifierIconInfo = {
    bg = "#e3d7c7",
    fg = "#4A74A8"
  },
  SnacksNotifierIconTrace = {
    bg = "#e3d7c7",
    fg = "#6660AF"
  },
  SnacksNotifierIconWarn = {
    bg = "#e3d7c7",
    fg = "#AE984C"
  },
  SnacksNotifierInfo = {
    bg = "#e3d7c7",
    fg = "#54473f"
  },
  SnacksNotifierTitleDebug = {
    bg = "#e3d7c7",
    fg = "#87786c"
  },
  SnacksNotifierTitleError = {
    bg = "#e3d7c7",
    fg = "#BC495D"
  },
  SnacksNotifierTitleInfo = {
    bg = "#e3d7c7",
    fg = "#4A74A8"
  },
  SnacksNotifierTitleTrace = {
    bg = "#e3d7c7",
    fg = "#6660AF"
  },
  SnacksNotifierTitleWarn = {
    bg = "#e3d7c7",
    fg = "#AE984C"
  },
  SnacksNotifierTrace = {
    bg = "#e3d7c7",
    fg = "#54473f"
  },
  SnacksNotifierWarn = {
    bg = "#e3d7c7",
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
  Sneak = {
    bg = "#C16C90",
    fg = "#d4c6b3"
  },
  SneakScope = {
    bg = "#d4c6b3"
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
  SupermavenSuggestion = {
    fg = "#ad9b88"
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
  TargetWord = {
    fg = "#CF9978"
  },
  TelescopeBorder = {
    bg = "#DED0BF",
    fg = "#6660AF"
  },
  TelescopeNormal = {
    bg = "#DED0BF",
    fg = "#54473f"
  },
  TelescopePromptBorder = {
    bg = "#DED0BF",
    fg = "#56AEA9"
  },
  TelescopePromptTitle = {
    bg = "#DED0BF",
    fg = "#56AEA9"
  },
  TelescopeResultsComment = {
    fg = "#87786c"
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
  YankyPut = "Search",
  YankyYanked = "IncSearch",
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
  illuminatedCurWord = {
    bg = "#d4c6b3"
  },
  illuminatedWord = {
    bg = "#d4c6b3"
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
