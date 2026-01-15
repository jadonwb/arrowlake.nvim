local colors = {
  _name = "arrowlake_light",
  _style = "light",
  ai = "#56AEA9",
  attention = "#C16C90",
  bg = "#ebe0cf",
  bg_active_parameter = "#d4c6b3",
  bg_code = "#e3d7c7",
  bg_dark = "#e3d7c7",
  bg_darker = "#dccdba",
  bg_float = "#dccdba",
  bg_highlight = "#d4c6b3",
  bg_hover = "#d4c6b3",
  bg_notification = "#e3d7c7",
  bg_search = "#d4c6b3",
  bg_search_current = "#C16C90",
  bg_sidebar = "#dccdba",
  bg_visual = "#d4c6b3",
  black = "#dccdba",
  blue = "#4A74A8",
  border = "#e3d7c7",
  border_color = "#6660AF",
  border_subtle = "#87786c",
  comment = "#87786c",
  constant = "#AD8A5A",
  constructor = "#C16C90",
  cyan = "#56AEA9",
  diff = {
    add = "#d7d2c2",
    change = "#ddcdb5",
    delete = "#e5ccc0",
    text = "#c2c4b4"
  },
  error = "#BC495D",
  fg = "#54473f",
  fg_dark = "#6c5e55",
  fg_darker = "#87786c",
  fg_gutter = "#ad9b88",
  fg_sidebar = "#87786c",
  focus = "#56AEA9",
  functions = "#6660AF",
  git = {
    add = "#4E7469",
    change = "#AD8A5A",
    delete = "#BC495D",
    ignore = "#87786c"
  },
  green = "#4E7469",
  hint = "#56AEA9",
  info = "#4A74A8",
  keyword = "#C16C90",
  link = "#56AEA9",
  macro = "#56AEA9",
  magenta = "#C16C90",
  markup = "#C88478",
  md_inline = "#4E7469",
  member = "#6c5e55",
  muted = "#87786c",
  none = "NONE",
  operator = "#6a8b89",
  orange = "#C88478",
  parameter = "#C88478",
  primary = "#6660AF",
  punctuation = "#6c5e55",
  purple = "#6660AF",
  rainbow = { "#6660AF", "#4A74A8", "#AD8A5A", "#4E7469", "#C16C90", "#56AEA9", "#BC495D", "#C88478" },
  red = "#BC495D",
  secondary = "#4A74A8",
  selection = "#d4c6b3",
  status = {
    bg = "#e3d7c7",
    command = "#AD8A5A",
    insert = "#4E7469",
    normal = "#6660AF",
    replace = "#BC495D",
    terminal = "#56AEA9",
    visual = "#C16C90"
  },
  string = "#4E7469",
  string_doc = "#4E7469",
  string_escape = "#C16C90",
  success = "#4E7469",
  terminal = {
    black = "#dccdba",
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
    yellow = "#AD8A5A",
    yellow_bright = "#c59546"
  },
  terminal_black = "#ad9b88",
  title = "#6660AF",
  todo = "#4A74A8",
  trace = "#6660AF",
  type = "#4A74A8",
  type_builtin = "#6284ae",
  variable = "#54473f",
  warning = "#AD8A5A",
  yellow = "#AD8A5A"
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
    fg = "#AD8A5A"
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
  ["@function.builtin"] = "Special",
  ["@function.call"] = "@function",
  ["@function.macro"] = "Macro",
  ["@function.method"] = "Function",
  ["@function.method.call"] = "@function.method",
  ["@keyword"] = {
    bold = true,
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
    bg = "#e5d7c3",
    bold = true,
    fg = "#AD8A5A"
  },
  ["@markup.heading.4.markdown"] = {
    bg = "#dbd5c5",
    bold = true,
    fg = "#4E7469"
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
    bg = "#e8d7c6",
    bold = true,
    fg = "#C88478"
  },
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = {
    fg = "#56AEA9"
  },
  ["@markup.link.label"] = "SpecialChar",
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = "Underlined",
  ["@markup.list"] = {
    fg = "#C88478"
  },
  ["@markup.list.checked"] = {
    fg = "#4E7469"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#C88478"
  },
  ["@markup.list.unchecked"] = {
    fg = "#4A74A8"
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
    fg = "#C88478"
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
    fg = "#C88478"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#b1786d"
  },
  ALEErrorSign = {
    fg = "#BC495D"
  },
  ALEWarningSign = {
    fg = "#AD8A5A"
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
    fg = "#56AEA9"
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
  BlinkCmpDoc = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  BlinkCmpDocBorder = {
    bg = "#dccdba",
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
    fg = "#56AEA9"
  },
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#56AEA9"
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
    fg = "#56AEA9"
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#56AEA9"
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
    fg = "#4A74A8"
  },
  BlinkCmpMenu = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  BlinkCmpMenuBorder = {
    bg = "#dccdba",
    fg = "#6660AF"
  },
  BlinkCmpSignatureHelp = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#dccdba",
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
    bg = "#dccdba",
    fg = "#54473f"
  },
  BufferAlternateADDED = {
    bg = "#dccdba",
    fg = "#4E7469"
  },
  BufferAlternateCHANGED = {
    bg = "#dccdba",
    fg = "#AD8A5A"
  },
  BufferAlternateDELETED = {
    bg = "#dccdba",
    fg = "#BC495D"
  },
  BufferAlternateERROR = {
    bg = "#dccdba",
    fg = "#BC495D"
  },
  BufferAlternateHINT = {
    bg = "#dccdba",
    fg = "#56AEA9"
  },
  BufferAlternateINFO = {
    bg = "#dccdba",
    fg = "#4A74A8"
  },
  BufferAlternateIndex = {
    bg = "#dccdba",
    fg = "#4A74A8"
  },
  BufferAlternateMod = {
    bg = "#dccdba",
    fg = "#AD8A5A"
  },
  BufferAlternateSign = {
    bg = "#dccdba",
    fg = "#4A74A8"
  },
  BufferAlternateTarget = {
    bg = "#dccdba",
    fg = "#C16C90"
  },
  BufferAlternateWARN = {
    bg = "#dccdba",
    fg = "#AD8A5A"
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
    fg = "#AD8A5A"
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
    fg = "#AD8A5A"
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
    fg = "#AD8A5A"
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
    fg = "#b99b71"
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
    fg = "#b99b71"
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
    fg = "#b99b71"
  },
  BufferLineIndicatorSelected = {
    fg = "#AD8A5A"
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
    fg = "#AD8A5A"
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
    fg = "#AD8A5A"
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
    fg = "#AD8A5A"
  },
  Character = {
    fg = "#4E7469"
  },
  CmpDocumentation = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  CmpDocumentationBorder = {
    bg = "#dccdba",
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
    fg = "#4A74A8"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#4A74A8"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#56AEA9"
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#56AEA9"
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
    fg = "#56AEA9"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#56AEA9"
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
    bg = "#dccdba"
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
    fg = "#AD8A5A"
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
    bg = "#e5d7c3"
  },
  DashboardDesc = {
    fg = "#56AEA9"
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
    fg = "#56AEA9"
  },
  DashboardKey = {
    fg = "#56AEA9"
  },
  DashboardMruIcon = {
    fg = "#C16C90"
  },
  DashboardMruTitle = {
    fg = "#56AEA9"
  },
  DashboardProjectIcon = {
    fg = "#56AEA9"
  },
  DashboardProjectTitle = {
    fg = "#56AEA9"
  },
  DashboardProjectTitleIcon = {
    fg = "#56AEA9"
  },
  DashboardShortCut = {
    fg = "#56AEA9"
  },
  DashboardShortCutIcon = {
    fg = "#6660AF"
  },
  Debug = {
    fg = "#AD8A5A"
  },
  DefinitionCount = {
    fg = "#C16C90"
  },
  DefinitionIcon = {
    fg = "#6660AF"
  },
  Delimiter = "Special",
  DeltaDiffFileWinbar = {
    bg = "#dccdba"
  },
  DeltaDiffFileWinbarBase = {
    bg = "#dccdba",
    bold = true,
    fg = "#6660AF"
  },
  DeltaDiffFileWinbarCurrent = {
    bg = "#dccdba",
    bold = true,
    fg = "#56AEA9"
  },
  DeltaDiffFileWinbarHint = {
    bg = "#dccdba",
    fg = "#87786c"
  },
  DeltaPickerBorder = {
    bg = "#dccdba",
    fg = "#6660AF"
  },
  DeltaPickerCursorLine = {
    bg = "#d4c6b3"
  },
  DeltaPickerDialog = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  DeltaPickerDirectory = {
    fg = "#4A74A8"
  },
  DeltaPickerPrompt = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  DeltaPickerSectionHeader = {
    bg = "#dccdba",
    bold = true,
    fg = "#6660AF"
  },
  DeltaPickerTitle = {
    bg = "#ebe0cf",
    bold = true,
    fg = "#6660AF"
  },
  DeltaPickerTreeConnector = {
    bg = "#dccdba",
    fg = "#87786c"
  },
  DeltaSpotlightPopup = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  DeltaSpotlightPopupAdded = {
    bg = "#d7d2c2"
  },
  DeltaSpotlightPopupAddedText = {
    bg = "#c2c4b4"
  },
  DeltaSpotlightPopupBorder = {
    bg = "#dccdba",
    fg = "#6660AF"
  },
  DeltaSpotlightPopupLineNr = {
    fg = "#ad9b88"
  },
  DeltaSpotlightPopupNeutral = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  DeltaSpotlightPopupRemoved = {
    bg = "#e5ccc0"
  },
  DeltaSpotlightPopupRemovedText = {
    bg = "#c2c4b4"
  },
  DeltaSpotlightPopupTitle = {
    bold = true,
    fg = "#6660AF"
  },
  DeltaSpotlightScratchDiffAdd = {
    bg = "#d7d2c2"
  },
  DeltaSpotlightScratchDiffChange = {
    bg = "#ddcdb5"
  },
  DeltaSpotlightScratchDiffDelete = {
    bg = "#e5ccc0"
  },
  DeltaSpotlightStatusClean = {
    fg = "#87786c"
  },
  DeltaSpotlightStatusConflict = {
    fg = "#BC495D"
  },
  DeltaSpotlightStatusError = {
    fg = "#BC495D"
  },
  DeltaSpotlightStatusMixed = {
    fg = "#AD8A5A"
  },
  DeltaSpotlightStatusOutsider = {
    fg = "#AD8A5A"
  },
  DeltaSpotlightStatusStaged = {
    fg = "#4E7469"
  },
  DeltaSpotlightStatusUnstaged = {
    fg = "#AD8A5A"
  },
  DeltaSpotlightStatusUntracked = {
    fg = "#4E7469"
  },
  DeltaSpotlightWinbar = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  DeltaSpotlightWinbarLabel = {
    fg = "#87786c"
  },
  DeltaSpotlightWinbarNumericValue = {
    fg = "#4A74A8"
  },
  DeltaSpotlightWinbarTitle = {
    bold = true,
    fg = "#54473f"
  },
  DeltaStatusAdded = {
    fg = "#4E7469"
  },
  DeltaStatusCopied = {
    fg = "#AD8A5A"
  },
  DeltaStatusDeleted = {
    fg = "#BC495D"
  },
  DeltaStatusModified = {
    fg = "#AD8A5A"
  },
  DeltaStatusRenamed = {
    fg = "#AD8A5A"
  },
  DeltaStatusUnmerged = {
    fg = "#AD8A5A"
  },
  DeltaStatusUntracked = {
    fg = "#4E7469"
  },
  DiagnosticError = {
    fg = "#BC495D"
  },
  DiagnosticFloatingErrorLabel = {
    bg = "#BC495D",
    fg = "#dccdba"
  },
  DiagnosticFloatingHintLabel = {
    bg = "#56AEA9",
    fg = "#dccdba"
  },
  DiagnosticFloatingInfoLabel = {
    bg = "#4A74A8",
    fg = "#dccdba"
  },
  DiagnosticFloatingWarnLabel = {
    bg = "#AD8A5A",
    fg = "#dccdba"
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
    sp = "#AD8A5A",
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
    bg = "#e8dcc9",
    fg = "#AD8A5A"
  },
  DiagnosticWarn = {
    fg = "#AD8A5A"
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#d7d2c2"
  },
  DiffChange = {
    bg = "#ddcdb5"
  },
  DiffDelete = {
    bg = "#e5ccc0"
  },
  DiffText = {
    bg = "#c2c4b4"
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
  DiffviewReference = {
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
    fg = "#AD8A5A"
  },
  DiffviewStatusDeleted = {
    fg = "#BC495D"
  },
  DiffviewStatusModified = {
    fg = "#AD8A5A"
  },
  DiffviewStatusRenamed = {
    fg = "#AD8A5A"
  },
  DiffviewStatusTypeChange = {
    fg = "#AD8A5A"
  },
  DiffviewStatusUnknown = {
    fg = "#BC495D"
  },
  DiffviewStatusUnmerged = {
    fg = "#AD8A5A"
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
    bg = "#dccdba",
    fg = "#87786c"
  },
  FFFFileInfoMatchType = {
    bg = "#dccdba",
    bold = true,
    fg = "#C16C90"
  },
  FFFFileInfoPath = {
    bg = "#dccdba",
    fg = "#6660AF"
  },
  FFFFileInfoScoreNeg = {
    bg = "#dccdba",
    fg = "#BC495D"
  },
  FFFFileInfoScorePos = {
    bg = "#dccdba",
    fg = "#4A74A8"
  },
  FFFFileInfoSection = {
    bg = "#dccdba",
    fg = "#6660AF"
  },
  FFFFileInfoSeparator = {
    bg = "#dccdba",
    fg = "#6660AF"
  },
  FFFFileInfoSize = {
    bg = "#dccdba"
  },
  FFFFileInfoTotalScore = {
    bg = "#dccdba",
    bold = true,
    fg = "#54473f"
  },
  FFFFileInfoType = {
    bg = "#dccdba",
    fg = "#4A74A8"
  },
  FFFFileInfoValue = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  FFFFileInfoValueDim = {
    bg = "#dccdba",
    fg = "#ad9b88"
  },
  FFFGitDeleted = {
    fg = "#BC495D"
  },
  FFFGitIgnored = {
    fg = "#87786c"
  },
  FFFGitModified = {
    fg = "#AD8A5A"
  },
  FFFGitRenamed = {
    fg = "#4A74A8"
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
    fg = "#AD8A5A"
  },
  FFFGitSignModifiedSelected = {
    bg = "#d4c6b3",
    fg = "#AD8A5A"
  },
  FFFGitSignRenamed = {
    fg = "#4A74A8"
  },
  FFFGitSignRenamedSelected = {
    bg = "#d4c6b3",
    fg = "#4A74A8"
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
  FFFSelected = "Directory",
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
    fg = "#54473f"
  },
  FloatBorder = {
    bg = "#dccdba",
    fg = "#6660AF"
  },
  FloatTitle = {
    bg = "#dccdba",
    fg = "#6660AF"
  },
  FoldColumn = {
    fg = "#87786c"
  },
  Folded = {
    bg = "#dccdba",
    fg = "#6660AF"
  },
  Foo = {
    bg = "#C16C90",
    fg = "#54473f"
  },
  Function = {
    fg = "#6660AF"
  },
  FzfLuaBorder = {
    bg = "#dccdba",
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
    bg = "#dccdba",
    fg = "#56AEA9"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#dccdba",
    fg = "#6660AF"
  },
  FzfLuaTitle = {
    bg = "#dccdba",
    fg = "#56AEA9"
  },
  GitGutterAdd = {
    fg = "#4E7469"
  },
  GitGutterAddLineNr = {
    fg = "#4E7469"
  },
  GitGutterChange = {
    fg = "#AD8A5A"
  },
  GitGutterChangeLineNr = {
    fg = "#AD8A5A"
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
    fg = "#AD8A5A"
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
    fg = "#AD8A5A"
  },
  GlyphPalette4 = {
    fg = "#6660AF"
  },
  GlyphPalette6 = {
    fg = "#4E7469"
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
    fg = "#56AEA9"
  },
  GrugFarInputLabel = {
    fg = "#4A74A8"
  },
  GrugFarInputPlaceholder = {
    fg = "#87786c"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#AD8A5A"
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
    bg = "#C16C90",
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
    bg = "#e8dcc9"
  },
  Headline4 = {
    bg = "#e3dbca"
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
    bg = "#e9dbcb"
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
    bg = "#C16C90",
    fg = "#54473f"
  },
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
    bold = true,
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
    fg = "#6660AF"
  },
  LazyCommitIssue = {
    fg = "#C88478"
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
    fg = "#6660AF"
  },
  LazyInfo = {
    fg = "#4A74A8"
  },
  LazyItalic = {
    italic = true
  },
  LazyLocal = {
    fg = "#AD8A5A"
  },
  LazyNoCond = {
    fg = "#AD8A5A"
  },
  LazyNormal = {
    bg = "#dccdba",
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
    fg = "#6a8b89"
  },
  LazyReasonEvent = {
    fg = "#AD8A5A"
  },
  LazyReasonFt = {
    fg = "#4E7469"
  },
  LazyReasonImport = {
    fg = "#54473f"
  },
  LazyReasonKeys = {
    fg = "#C16C90"
  },
  LazyReasonPlugin = {
    fg = "#6660AF"
  },
  LazyReasonRequire = {
    fg = "#C88478"
  },
  LazyReasonRuntime = {
    fg = "#56AEA9"
  },
  LazyReasonSource = {
    fg = "#4E7469"
  },
  LazyReasonStart = {
    fg = "#6c5e55"
  },
  LazySpecial = {
    fg = "#56AEA9"
  },
  LazyTaskOutput = {
    fg = "#6c5e55"
  },
  LazyUrl = {
    fg = "#56AEA9"
  },
  LazyValue = {
    fg = "#4E7469"
  },
  LazyWarning = {
    fg = "#AD8A5A"
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
    fg = "#6660AF"
  },
  LspFloatWinNormal = {
    bg = "#dccdba"
  },
  LspInfoBorder = {
    bg = "#dccdba",
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
    fg = "#56AEA9"
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
    fg = "#C88478"
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
    fg = "#dccdba"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#4E7469",
    fg = "#dccdba"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#4E7469"
  },
  MiniDiffSignChange = {
    fg = "#AD8A5A"
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
    bg = "#dccdba",
    bold = true,
    fg = "#56AEA9"
  },
  MiniHipatternsFixme = {
    bg = "#BC495D",
    bold = true,
    fg = "#dccdba"
  },
  MiniHipatternsHack = {
    bg = "#AD8A5A",
    bold = true,
    fg = "#dccdba"
  },
  MiniHipatternsNote = {
    bg = "#56AEA9",
    bold = true,
    fg = "#dccdba"
  },
  MiniHipatternsTodo = {
    bg = "#4A74A8",
    bold = true,
    fg = "#dccdba"
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
    fg = "#C88478"
  },
  MiniIconsPurple = {
    fg = "#6660AF"
  },
  MiniIconsRed = {
    fg = "#BC495D"
  },
  MiniIconsYellow = {
    fg = "#AD8A5A"
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
    fg = "#ffffff"
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
    bg = "#dccdba",
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
    bg = "#dccdba",
    fg = "#4A74A8"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#AD8A5A",
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
    fg = "#AD8A5A"
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
    bg = "#AD8A5A",
    bold = true,
    fg = "#dccdba"
  },
  MiniStatuslineModeInsert = {
    bg = "#4E7469",
    bold = true,
    fg = "#dccdba"
  },
  MiniStatuslineModeNormal = {
    bg = "#6660AF",
    bold = true,
    fg = "#dccdba"
  },
  MiniStatuslineModeOther = {
    bg = "#56AEA9",
    bold = true,
    fg = "#dccdba"
  },
  MiniStatuslineModeReplace = {
    bg = "#BC495D",
    bold = true,
    fg = "#dccdba"
  },
  MiniStatuslineModeVisual = {
    bg = "#C16C90",
    bold = true,
    fg = "#dccdba"
  },
  MiniSurround = {
    bg = "#56AEA9",
    fg = "#dccdba"
  },
  MiniTablineCurrent = {
    bg = "#ad9b88",
    fg = "#54473f"
  },
  MiniTablineFill = {
    bg = "#dccdba"
  },
  MiniTablineHidden = {
    bg = "#e3d7c7",
    fg = "#87786c"
  },
  MiniTablineModifiedCurrent = {
    bg = "#ad9b88",
    fg = "#AD8A5A"
  },
  MiniTablineModifiedHidden = {
    bg = "#e3d7c7",
    fg = "#c0a47d"
  },
  MiniTablineModifiedVisible = {
    bg = "#e3d7c7",
    fg = "#AD8A5A"
  },
  MiniTablineTabpagesection = {
    bg = "#ad9b88",
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
    fg = "#AD8A5A"
  },
  NeoTreeGitStaged = {
    fg = "#4E7469"
  },
  NeoTreeGitUntracked = {
    fg = "#4E7469"
  },
  NeoTreeNormal = {
    bg = "#dccdba",
    fg = "#87786c"
  },
  NeoTreeNormalNC = {
    bg = "#dccdba",
    fg = "#87786c"
  },
  NeoTreeTabActive = {
    bg = "#dccdba",
    bold = true,
    fg = "#56AEA9"
  },
  NeoTreeTabInactive = {
    fg = "#6660AF"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#dccdba",
    fg = "#6660AF"
  },
  NeoTreeTabSeparatorInactive = {
    fg = "#ebe0cf"
  },
  NeogitBranch = {
    fg = "#6660AF"
  },
  NeogitDiffAddHighlight = {
    bg = "#d7d2c2",
    fg = "#4E7469"
  },
  NeogitDiffContextHighlight = {
    bg = "#ccbeac",
    fg = "#6c5e55"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#e5ccc0",
    fg = "#BC495D"
  },
  NeogitHunkHeader = {
    bg = "#d4c6b3",
    fg = "#54473f"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#ad9b88",
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
    fg = "#56AEA9"
  },
  NeotestFocused = {
    fg = "#56AEA9"
  },
  NeotestIndent = {
    fg = "#87786c"
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
    fg = "#56AEA9"
  },
  NoiceCmdlineIconLua = {
    fg = "#4A74A8"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#56AEA9"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#4A74A8"
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
    bg = "#dccdba",
    fg = "#54473f"
  },
  NormalNC = {
    bg = "#ebe0cf",
    fg = "#54473f"
  },
  NormalSB = {
    bg = "#dccdba",
    fg = "#87786c"
  },
  NotifyBackground = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  NotifyDEBUGBody = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  NotifyDEBUGBorder = {
    bg = "#dccdba",
    fg = "#cdc1b1"
  },
  NotifyDEBUGIcon = {
    fg = "#87786c"
  },
  NotifyDEBUGTitle = {
    fg = "#87786c"
  },
  NotifyERRORBody = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  NotifyERRORBorder = {
    bg = "#dccdba",
    fg = "#ddb3ad"
  },
  NotifyERRORIcon = {
    fg = "#BC495D"
  },
  NotifyERRORTitle = {
    fg = "#BC495D"
  },
  NotifyINFOBody = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  NotifyINFOBorder = {
    bg = "#dccdba",
    fg = "#bbc0c3"
  },
  NotifyINFOIcon = {
    fg = "#4A74A8"
  },
  NotifyINFOTitle = {
    fg = "#4A74A8"
  },
  NotifyTRACEBody = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  NotifyTRACEBorder = {
    bg = "#dccdba",
    fg = "#c3bac5"
  },
  NotifyTRACEIcon = {
    fg = "#6660AF"
  },
  NotifyTRACETitle = {
    fg = "#6660AF"
  },
  NotifyWARNBody = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  NotifyWARNBorder = {
    bg = "#dccdba",
    fg = "#d8c6ac"
  },
  NotifyWARNIcon = {
    fg = "#AD8A5A"
  },
  NotifyWARNTitle = {
    fg = "#AD8A5A"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#6660AF"
  },
  NvimTreeGitDeleted = {
    fg = "#BC495D"
  },
  NvimTreeGitDirty = {
    fg = "#AD8A5A"
  },
  NvimTreeGitNew = {
    fg = "#4E7469"
  },
  NvimTreeImageFile = {
    fg = "#56AEA9"
  },
  NvimTreeIndentMarker = {
    fg = "#ad9b88"
  },
  NvimTreeNormal = {
    bg = "#dccdba",
    fg = "#87786c"
  },
  NvimTreeNormalNC = {
    bg = "#dccdba",
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
    fg = "#56AEA9"
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
    fg = "#AD8A5A"
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
    bg = "#56AEA9",
    bold = true,
    fg = "#dccdba"
  },
  PiBusy = {
    bold = true,
    fg = "#56AEA9"
  },
  PiBusyTime = {
    fg = "#87786c"
  },
  PiChatHistoryFloatTitle = {
    bg = "#6660AF",
    bold = true,
    fg = "#ebe0cf"
  },
  PiChatHistoryWinbarTitle = {
    bg = "#6660AF",
    bold = true,
    fg = "#ebe0cf"
  },
  PiDialogTitle = {
    bold = true,
    fg = "#6660AF"
  },
  PiDiffAdd = {
    bg = "#d7d2c2"
  },
  PiDiffDelete = {
    bg = "#e5ccc0"
  },
  PiDiffLineNr = {
    fg = "#ad9b88"
  },
  PiDiffWinbar = {
    bg = "#dccdba"
  },
  PiDiffWinbarCurrent = {
    bold = true,
    fg = "#54473f"
  },
  PiDiffWinbarHint = {
    fg = "#87786c"
  },
  PiDiffWinbarProposed = {
    bold = true,
    fg = "#54473f"
  },
  PiError = {
    fg = "#BC495D"
  },
  PiFloat = {
    bg = "#dccdba"
  },
  PiFloatBorder = "FloatBorder",
  PiMention = {
    fg = "#4A74A8",
    underline = true
  },
  PiMessageAttachments = {
    fg = "#C16C90",
    italic = true
  },
  PiMessageDateTime = {
    fg = "#87786c"
  },
  PiStartupLabel = {
    bg = "#87786c",
    bold = true,
    fg = "#dccdba"
  },
  PiToolBorder = {
    fg = "#87786c"
  },
  PiToolCall = {
    fg = "#87786c"
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
  PiUserMessageLabel = {
    bg = "#4A74A8",
    bold = true,
    fg = "#dccdba"
  },
  PiWarning = {
    fg = "#AD8A5A",
    italic = true
  },
  PiWelcome = {
    fg = "#4A74A8"
  },
  Pmenu = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  PmenuMatch = {
    bg = "#dccdba",
    fg = "#4A74A8"
  },
  PmenuMatchSel = {
    bg = "#d4c6b3",
    fg = "#4A74A8"
  },
  PmenuSbar = {
    bg = "#d5c6b4"
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
    fg = "#C88478"
  },
  RainbowDelimiterRed = {
    fg = "#BC495D"
  },
  RainbowDelimiterViolet = {
    fg = "#6660AF"
  },
  RainbowDelimiterYellow = {
    fg = "#AD8A5A"
  },
  ReferencesCount = {
    fg = "#C16C90"
  },
  ReferencesIcon = {
    fg = "#6660AF"
  },
  RenderMarkdownBullet = {
    fg = "#C88478"
  },
  RenderMarkdownCode = {
    bg = "#e3d7c7"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#C88478"
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
    bg = "#e5d7c3"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#AD8A5A"
  },
  RenderMarkdownH4Bg = {
    bg = "#dbd5c5"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#4E7469"
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
    bg = "#e8d7c6"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#C88478"
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
    fg = "#AD8A5A"
  },
  ScrollbarWarnHandle = {
    bg = "#d4c6b3",
    fg = "#AD8A5A"
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
    fg = "#AD8A5A"
  },
  SidekickSignDelete = {
    fg = "#BC495D"
  },
  SignColumn = {
    fg = "#ad9b88"
  },
  SignColumnSB = {
    bg = "#dccdba",
    fg = "#ad9b88"
  },
  SnacksDashboardDesc = {
    fg = "#56AEA9"
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
    fg = "#AD8A5A",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#4E7469",
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
    fg = "#C88478",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#56AEA9",
    nocombine = true
  },
  SnacksInputBorder = {
    fg = "#56AEA9"
  },
  SnacksInputIcon = {
    fg = "#4A74A8"
  },
  SnacksInputTitle = {
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
    fg = "#d2bea0"
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
    fg = "#87786c"
  },
  SnacksNotifierIconError = {
    fg = "#BC495D"
  },
  SnacksNotifierIconInfo = {
    fg = "#4A74A8"
  },
  SnacksNotifierIconTrace = {
    fg = "#6660AF"
  },
  SnacksNotifierIconWarn = {
    fg = "#AD8A5A"
  },
  SnacksNotifierInfo = {
    bg = "#e3d7c7",
    fg = "#54473f"
  },
  SnacksNotifierTitleDebug = {
    fg = "#87786c"
  },
  SnacksNotifierTitleError = {
    fg = "#BC495D"
  },
  SnacksNotifierTitleInfo = {
    fg = "#4A74A8"
  },
  SnacksNotifierTitleTrace = {
    fg = "#6660AF"
  },
  SnacksNotifierTitleWarn = {
    fg = "#AD8A5A"
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
    bg = "#ebe0cf",
    fg = "#6660AF"
  },
  SnacksPickerInputBorder = {
    bg = "#dccdba",
    fg = "#56AEA9"
  },
  SnacksPickerInputTitle = {
    bg = "#ebe0cf",
    fg = "#6660AF"
  },
  SnacksPickerPickWin = {
    bg = "#d4c6b3",
    bold = true,
    fg = "#54473f"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#C16C90",
    bold = true,
    fg = "#54473f"
  },
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
    sp = "#AD8A5A",
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
    bg = "#C16C90",
    fg = "#dccdba"
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
    fg = "#dccdba"
  },
  TargetWord = {
    fg = "#56AEA9"
  },
  TelescopeBorder = {
    bg = "#dccdba",
    fg = "#6660AF"
  },
  TelescopeNormal = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  TelescopePromptBorder = {
    bg = "#dccdba",
    fg = "#56AEA9"
  },
  TelescopePromptTitle = {
    bg = "#dccdba",
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
  TroubleNormal = "Normal",
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
    fg = "#AD8A5A"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#4E7469"
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
    fg = "#C88478"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#56AEA9"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#56AEA9"
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
    fg = "#AD8A5A"
  },
  WhichKey = {
    fg = "#56AEA9"
  },
  WhichKeyBorder = {
    bg = "#dccdba",
    fg = "#6660AF"
  },
  WhichKeyDesc = {
    fg = "#4A74A8"
  },
  WhichKeyGroup = {
    fg = "#6660AF"
  },
  WhichKeyNormal = {
    bg = "#dccdba",
    fg = "#54473f"
  },
  WhichKeySeparator = {
    fg = "#87786c"
  },
  WhichKeyTitle = {
    bg = "#dccdba",
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
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
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
    bg = "#dccdba"
  },
  diffAdded = {
    bg = "#d7d2c2",
    fg = "#4E7469"
  },
  diffChanged = {
    bg = "#ddcdb5",
    fg = "#AD8A5A"
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
    bg = "#d7d2c2",
    fg = "#4A74A8"
  },
  diffOldFile = {
    bg = "#e5ccc0",
    fg = "#4A74A8"
  },
  diffRemoved = {
    bg = "#e5ccc0",
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
    fg = "#AD8A5A"
  },
  helpCommand = {
    bg = "#ad9b88",
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
    fg = "#87786c"
  }
}
