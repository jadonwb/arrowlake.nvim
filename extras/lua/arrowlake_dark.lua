local colors = {
  _name = "arrowlake_dark",
  _style = "dark",
  ai = "#33D4B4",
  attention = "#D91C87",
  bg = "#0D0C25",
  bg_active_parameter = "#161440",
  bg_code = "#09081a",
  bg_dark = "#09081a",
  bg_darker = "#070614",
  bg_float = "#070614",
  bg_highlight = "#161440",
  bg_hover = "#312e55",
  bg_notification = "#09081a",
  bg_search = "#312e55",
  bg_search_current = "#D91C87",
  bg_sidebar = "#070614",
  bg_visual = "#161440",
  black = "#070614",
  blue = "#3F3BF5",
  border = "#09081a",
  border_color = "#3F3BF5",
  border_subtle = "#5c6296",
  comment = "#5c6296",
  constant = "#FB9B00",
  constructor = "#D91C87",
  cyan = "#33D4B4",
  diff = {
    add = "#132834",
    change = "#42393b",
    delete = "#430930",
    text = "#1e1e3b"
  },
  error = "#E50050",
  fg = "#bec8e8",
  fg_dark = "#7e85b8",
  fg_darker = "#5c6296",
  fg_gutter = "#312e55",
  fg_sidebar = "#5c6296",
  focus = "#FB9B00",
  functions = "#3F3BF5",
  git = {
    add = "#2A8A6B",
    change = "#FFD888",
    delete = "#E50050",
    ignore = "#5c6296"
  },
  green = "#2A8A6B",
  hint = "#33D4B4",
  info = "#5352CD",
  keyword = "#D91C87",
  link = "#33D4B4",
  macro = "#33D4B4",
  magenta = "#D91C87",
  markup = "#FB9B00",
  md_inline = "#FFD888",
  member = "#7e85b8",
  muted = "#5c6296",
  none = "NONE",
  operator = "#9AC1E5",
  orange = "#FB9B00",
  parameter = "#FFD888",
  primary = "#3F3BF5",
  punctuation = "#7e85b8",
  purple = "#834CCF",
  rainbow = { "#3F3BF5", "#FFD888", "#D91C87", "#2A8A6B", "#33D4B4", "#E50050", "#834CCF", "#FB9B00" },
  red = "#E50050",
  secondary = "#5352CD",
  selection = "#161440",
  status = {
    bg = "#09081a",
    command = "#FB9B00",
    insert = "#2A8A6B",
    normal = "#3F3BF5",
    replace = "#E50050",
    terminal = "#33D4B4",
    visual = "#D91C87"
  },
  string = "#2A8A6B",
  string_doc = "#FFD888",
  string_escape = "#D91C87",
  success = "#2A8A6B",
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
  terminal_black = "#312e55",
  title = "#3F3BF5",
  todo = "#5352CD",
  trace = "#834CCF",
  type = "#5352CD",
  type_builtin = "#4241a3",
  variable = "#bec8e8",
  warning = "#FB9B00",
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
  ["@function.builtin"] = "Special",
  ["@function.call"] = "@function",
  ["@function.macro"] = "Macro",
  ["@function.method"] = "Function",
  ["@function.method.call"] = "@function.method",
  ["@keyword"] = {
    bold = true,
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
    fg = "#4241a3"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#4241a3"
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
    bg = "#230b29",
    bold = true,
    fg = "#E50050"
  },
  ["@markup.heading.7.markdown"] = {
    bg = "#191236",
    bold = true,
    fg = "#834CCF"
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
    fg = "#5352CD"
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
    fg = "#4241a3"
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
  ALEErrorSign = {
    fg = "#E50050"
  },
  ALEWarningSign = {
    fg = "#FB9B00"
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
    fg = "#312e55"
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
    fg = "#bec8e8"
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
    fg = "#33D4B4"
  },
  AlphaFooter = {
    fg = "#5352CD"
  },
  AlphaHeader = {
    fg = "#3F3BF5"
  },
  AlphaHeaderLabel = {
    fg = "#FB9B00"
  },
  AlphaShortcut = {
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
  BlinkCmpLabelMatch = {
    bg = "NONE",
    fg = "#5352CD"
  },
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
  BufferAlternate = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  BufferAlternateADDED = {
    bg = "#070614",
    fg = "#2A8A6B"
  },
  BufferAlternateCHANGED = {
    bg = "#070614",
    fg = "#FFD888"
  },
  BufferAlternateDELETED = {
    bg = "#070614",
    fg = "#E50050"
  },
  BufferAlternateERROR = {
    bg = "#070614",
    fg = "#E50050"
  },
  BufferAlternateHINT = {
    bg = "#070614",
    fg = "#33D4B4"
  },
  BufferAlternateINFO = {
    bg = "#070614",
    fg = "#5352CD"
  },
  BufferAlternateIndex = {
    bg = "#070614",
    fg = "#5352CD"
  },
  BufferAlternateMod = {
    bg = "#070614",
    fg = "#FB9B00"
  },
  BufferAlternateSign = {
    bg = "#070614",
    fg = "#5352CD"
  },
  BufferAlternateTarget = {
    bg = "#070614",
    fg = "#D91C87"
  },
  BufferAlternateWARN = {
    bg = "#070614",
    fg = "#FB9B00"
  },
  BufferCurrent = {
    bg = "#0D0C25",
    fg = "#bec8e8"
  },
  BufferCurrentADDED = {
    bg = "#0D0C25",
    fg = "#2A8A6B"
  },
  BufferCurrentCHANGED = {
    bg = "#0D0C25",
    fg = "#FFD888"
  },
  BufferCurrentDELETED = {
    bg = "#0D0C25",
    fg = "#E50050"
  },
  BufferCurrentERROR = {
    bg = "#0D0C25",
    fg = "#E50050"
  },
  BufferCurrentHINT = {
    bg = "#0D0C25",
    fg = "#33D4B4"
  },
  BufferCurrentINFO = {
    bg = "#0D0C25",
    fg = "#5352CD"
  },
  BufferCurrentIndex = {
    bg = "#0D0C25",
    fg = "#5352CD"
  },
  BufferCurrentMod = {
    bg = "#0D0C25",
    fg = "#FB9B00"
  },
  BufferCurrentSign = {
    bg = "#0D0C25",
    fg = "#0D0C25"
  },
  BufferCurrentTarget = {
    bg = "#0D0C25",
    fg = "#D91C87"
  },
  BufferCurrentWARN = {
    bg = "#0D0C25",
    fg = "#FB9B00"
  },
  BufferInactive = {
    bg = "#110f30",
    fg = "#4c517f"
  },
  BufferInactiveADDED = {
    bg = "#110f30",
    fg = "#24715d"
  },
  BufferInactiveCHANGED = {
    bg = "#110f30",
    fg = "#cfaf74"
  },
  BufferInactiveDELETED = {
    bg = "#110f30",
    fg = "#ba0247"
  },
  BufferInactiveERROR = {
    bg = "#110f30",
    fg = "#ba0247"
  },
  BufferInactiveHINT = {
    bg = "#110f30",
    fg = "#2bac97"
  },
  BufferInactiveINFO = {
    bg = "#110f30",
    fg = "#4544ab"
  },
  BufferInactiveIndex = {
    bg = "#110f30",
    fg = "#5c6296"
  },
  BufferInactiveMod = {
    bg = "#110f30",
    fg = "#cb7e07"
  },
  BufferInactiveSign = {
    bg = "#110f30",
    fg = "#0D0C25"
  },
  BufferInactiveTarget = {
    bg = "#110f30",
    fg = "#D91C87"
  },
  BufferInactiveWARN = {
    bg = "#110f30",
    fg = "#cb7e07"
  },
  BufferLineIndicatorSelected = {
    fg = "#FFD888"
  },
  BufferOffset = {
    bg = "#09081a",
    fg = "#5c6296"
  },
  BufferTabpageFill = {
    bg = "#14123b",
    fg = "#5c6296"
  },
  BufferTabpages = {
    bg = "#09081a",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#09081a",
    fg = "#bec8e8"
  },
  BufferVisibleADDED = {
    bg = "#09081a",
    fg = "#2A8A6B"
  },
  BufferVisibleCHANGED = {
    bg = "#09081a",
    fg = "#FFD888"
  },
  BufferVisibleDELETED = {
    bg = "#09081a",
    fg = "#E50050"
  },
  BufferVisibleERROR = {
    bg = "#09081a",
    fg = "#E50050"
  },
  BufferVisibleHINT = {
    bg = "#09081a",
    fg = "#33D4B4"
  },
  BufferVisibleINFO = {
    bg = "#09081a",
    fg = "#5352CD"
  },
  BufferVisibleIndex = {
    bg = "#09081a",
    fg = "#5352CD"
  },
  BufferVisibleMod = {
    bg = "#09081a",
    fg = "#FB9B00"
  },
  BufferVisibleSign = {
    bg = "#09081a",
    fg = "#5352CD"
  },
  BufferVisibleTarget = {
    bg = "#09081a",
    fg = "#D91C87"
  },
  BufferVisibleWARN = {
    bg = "#09081a",
    fg = "#FB9B00"
  },
  Character = {
    fg = "#2A8A6B"
  },
  CmpDocumentation = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  CmpDocumentationBorder = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  CmpGhostText = {
    fg = "#312e55"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#bec8e8"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#312e55",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#5352CD"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#5352CD"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#33D4B4"
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#33D4B4"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#7e85b8"
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
    fg = "#33D4B4"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#33D4B4"
  },
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = "#5c6296"
  },
  CodeBlock = {
    bg = "#09081a"
  },
  CodeiumSuggestion = {
    fg = "#312e55"
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
    fg = "#FB9B00"
  },
  CopilotAnnotation = {
    fg = "#312e55"
  },
  CopilotSuggestion = {
    fg = "#312e55"
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
  DashboardDesc = {
    fg = "#33D4B4"
  },
  DashboardFiles = {
    fg = "#3F3BF5"
  },
  DashboardFooter = {
    fg = "#5352CD"
  },
  DashboardHeader = {
    fg = "#3F3BF5"
  },
  DashboardIcon = {
    fg = "#33D4B4"
  },
  DashboardKey = {
    fg = "#FB9B00"
  },
  DashboardMruIcon = {
    fg = "#D91C87"
  },
  DashboardMruTitle = {
    fg = "#33D4B4"
  },
  DashboardProjectIcon = {
    fg = "#FB9B00"
  },
  DashboardProjectTitle = {
    fg = "#33D4B4"
  },
  DashboardProjectTitleIcon = {
    fg = "#FB9B00"
  },
  DashboardShortCut = {
    fg = "#33D4B4"
  },
  DashboardShortCutIcon = {
    fg = "#3F3BF5"
  },
  Debug = {
    fg = "#FB9B00"
  },
  DefinitionCount = {
    fg = "#D91C87"
  },
  DefinitionIcon = {
    fg = "#3F3BF5"
  },
  Delimiter = "Special",
  DeltaDiffFileWinbar = {
    bg = "#070614"
  },
  DeltaDiffFileWinbarBase = {
    bg = "#070614",
    bold = true,
    fg = "#3F3BF5"
  },
  DeltaDiffFileWinbarCurrent = {
    bg = "#070614",
    bold = true,
    fg = "#FB9B00"
  },
  DeltaDiffFileWinbarHint = {
    bg = "#070614",
    fg = "#5c6296"
  },
  DeltaPickerBorder = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  DeltaPickerCursorLine = {
    bg = "#161440"
  },
  DeltaPickerDialog = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  DeltaPickerDirectory = {
    fg = "#5352CD"
  },
  DeltaPickerPrompt = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  DeltaPickerSectionHeader = {
    bg = "#070614",
    bold = true,
    fg = "#3F3BF5"
  },
  DeltaPickerTitle = {
    bg = "#0D0C25",
    bold = true,
    fg = "#3F3BF5"
  },
  DeltaPickerTreeConnector = {
    bg = "#070614",
    fg = "#5c6296"
  },
  DeltaSpotlightPopup = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  DeltaSpotlightPopupAdded = {
    bg = "#132834"
  },
  DeltaSpotlightPopupAddedText = {
    bg = "#1e1e3b"
  },
  DeltaSpotlightPopupBorder = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  DeltaSpotlightPopupLineNr = {
    fg = "#312e55"
  },
  DeltaSpotlightPopupNeutral = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  DeltaSpotlightPopupRemoved = {
    bg = "#430930"
  },
  DeltaSpotlightPopupRemovedText = {
    bg = "#1e1e3b"
  },
  DeltaSpotlightPopupTitle = {
    bold = true,
    fg = "#3F3BF5"
  },
  DeltaSpotlightScratchDiffAdd = {
    bg = "#132834"
  },
  DeltaSpotlightScratchDiffChange = {
    bg = "#42393b"
  },
  DeltaSpotlightScratchDiffDelete = {
    bg = "#430930"
  },
  DeltaSpotlightStatusClean = {
    fg = "#5c6296"
  },
  DeltaSpotlightStatusConflict = {
    fg = "#E50050"
  },
  DeltaSpotlightStatusError = {
    fg = "#E50050"
  },
  DeltaSpotlightStatusMixed = {
    fg = "#FB9B00"
  },
  DeltaSpotlightStatusOutsider = {
    fg = "#FB9B00"
  },
  DeltaSpotlightStatusStaged = {
    fg = "#2A8A6B"
  },
  DeltaSpotlightStatusUnstaged = {
    fg = "#FFD888"
  },
  DeltaSpotlightStatusUntracked = {
    fg = "#2A8A6B"
  },
  DeltaSpotlightWinbar = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  DeltaSpotlightWinbarLabel = {
    fg = "#5c6296"
  },
  DeltaSpotlightWinbarNumericValue = {
    fg = "#5352CD"
  },
  DeltaSpotlightWinbarTitle = {
    bold = true,
    fg = "#bec8e8"
  },
  DeltaStatusAdded = {
    fg = "#2A8A6B"
  },
  DeltaStatusCopied = {
    fg = "#FFD888"
  },
  DeltaStatusDeleted = {
    fg = "#E50050"
  },
  DeltaStatusModified = {
    fg = "#FFD888"
  },
  DeltaStatusRenamed = {
    fg = "#FFD888"
  },
  DeltaStatusUnmerged = {
    fg = "#FB9B00"
  },
  DeltaStatusUntracked = {
    fg = "#2A8A6B"
  },
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
  DiagnosticInformation = "DiagnosticInfo",
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
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#132834"
  },
  DiffChange = {
    bg = "#42393b"
  },
  DiffDelete = {
    bg = "#430930"
  },
  DiffText = {
    bg = "#1e1e3b"
  },
  DiffviewDiffAddText = {
    bg = "#1e1e3b"
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
  DiffviewReference = {
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
    fg = "#5352CD"
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
    bg = "#070614"
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
    fg = "#5352CD"
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
    fg = "#5352CD"
  },
  FFFGitSignRenamedSelected = {
    bg = "#161440",
    fg = "#5352CD"
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
  FFFSelected = "Directory",
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
    fg = "#bec8e8"
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
    fg = "#3F3BF5"
  },
  FzfLuaBorder = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#7e85b8"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#bec8e8"
  },
  FzfLuaFzfPointer = {
    fg = "#D91C87"
  },
  FzfLuaFzfSeparator = {
    bg = "#070614",
    fg = "#FB9B00"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  FzfLuaTitle = {
    bg = "#070614",
    fg = "#FB9B00"
  },
  GitGutterAdd = {
    fg = "#2A8A6B"
  },
  GitGutterAddLineNr = {
    fg = "#2A8A6B"
  },
  GitGutterChange = {
    fg = "#FFD888"
  },
  GitGutterChangeLineNr = {
    fg = "#FFD888"
  },
  GitGutterDelete = {
    fg = "#E50050"
  },
  GitGutterDeleteLineNr = {
    fg = "#E50050"
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
  GlyphPalette1 = {
    fg = "#E50050"
  },
  GlyphPalette2 = {
    fg = "#2A8A6B"
  },
  GlyphPalette3 = {
    fg = "#FB9B00"
  },
  GlyphPalette4 = {
    fg = "#3F3BF5"
  },
  GlyphPalette6 = {
    fg = "#2A8A6B"
  },
  GlyphPalette7 = {
    fg = "#bec8e8"
  },
  GlyphPalette9 = {
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
    bg = "#D91C87",
    fg = "#bec8e8"
  },
  GrugFarResultsStats = {
    fg = "#3F3BF5"
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#100e2f"
  },
  Headline2 = {
    bg = "#19162a"
  },
  Headline3 = {
    bg = "#170d2a"
  },
  Headline4 = {
    bg = "#0e1229"
  },
  Headline5 = {
    bg = "#0f162c"
  },
  Headline6 = {
    bg = "#180b27"
  },
  Headline7 = {
    bg = "#130f2e"
  },
  Headline8 = {
    bg = "#191323"
  },
  HopNextKey = {
    bold = true,
    fg = "#D91C87"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#33D4B4"
  },
  HopNextKey2 = {
    fg = "#24847b"
  },
  HopUnmatched = {
    fg = "#5c6296"
  },
  IblIndent = {
    fg = "#312e55",
    nocombine = true
  },
  IblScope = {
    fg = "#FB9B00",
    nocombine = true
  },
  Identifier = {
    fg = "#7e85b8"
  },
  IlluminatedWordRead = {
    bg = "#312e55"
  },
  IlluminatedWordText = {
    bg = "#312e55"
  },
  IlluminatedWordWrite = {
    bg = "#312e55"
  },
  IncSearch = {
    bg = "#D91C87",
    fg = "#bec8e8"
  },
  IndentBlanklineChar = {
    fg = "#312e55",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#FB9B00",
    nocombine = true
  },
  IndentLine = {
    fg = "#312e55",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#FB9B00",
    nocombine = true
  },
  Italic = {
    fg = "#bec8e8",
    italic = true
  },
  Keyword = {
    bold = true,
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
    fg = "#3F3BF5"
  },
  LazyCommitIssue = {
    fg = "#FB9B00"
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
    fg = "#3F3BF5"
  },
  LazyInfo = {
    fg = "#5352CD"
  },
  LazyItalic = {
    italic = true
  },
  LazyLocal = {
    fg = "#FB9B00"
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
    fg = "#9AC1E5"
  },
  LazyReasonEvent = {
    fg = "#FB9B00"
  },
  LazyReasonFt = {
    fg = "#2A8A6B"
  },
  LazyReasonImport = {
    fg = "#bec8e8"
  },
  LazyReasonKeys = {
    fg = "#D91C87"
  },
  LazyReasonPlugin = {
    fg = "#3F3BF5"
  },
  LazyReasonRequire = {
    fg = "#FFD888"
  },
  LazyReasonRuntime = {
    fg = "#33D4B4"
  },
  LazyReasonSource = {
    fg = "#2A8A6B"
  },
  LazyReasonStart = {
    fg = "#7e85b8"
  },
  LazySpecial = {
    fg = "#FB9B00"
  },
  LazyTaskOutput = {
    fg = "#7e85b8"
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
  LeapBackdrop = {
    fg = "#5c6296"
  },
  LeapLabel = {
    bold = true,
    fg = "#D91C87"
  },
  LeapMatch = {
    bg = "#D91C87",
    bold = true,
    fg = "#bec8e8"
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
  LspFloatWinBorder = {
    fg = "#3F3BF5"
  },
  LspFloatWinNormal = {
    bg = "#070614"
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
    bg = "#312e55"
  },
  LspReferenceText = {
    bg = "#312e55"
  },
  LspReferenceWrite = {
    bg = "#312e55"
  },
  LspSagaBorderTitle = {
    fg = "#33D4B4"
  },
  LspSagaCodeActionBorder = {
    fg = "#3F3BF5"
  },
  LspSagaCodeActionContent = {
    fg = "#D91C87"
  },
  LspSagaCodeActionTitle = {
    fg = "#5352CD"
  },
  LspSagaDefPreviewBorder = {
    fg = "#33D4B4"
  },
  LspSagaFinderSelection = {
    bg = "#312e55",
    fg = "#bec8e8"
  },
  LspSagaHoverBorder = {
    fg = "#3F3BF5"
  },
  LspSagaRenameBorder = {
    fg = "#33D4B4"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#3F3BF5"
  },
  LspSignatureActiveParameter = {
    bg = "#161440",
    bold = true,
    fg = "#FFD888"
  },
  MatchParen = {
    bold = true,
    fg = "#FB9B00"
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
    bg = "#312e55"
  },
  MiniCursorwordCurrent = {
    bg = "#312e55"
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#E50050",
    fg = "#070614"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#2A8A6B",
    fg = "#070614"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#2A8A6B"
  },
  MiniDiffSignChange = {
    fg = "#FFD888"
  },
  MiniDiffSignDelete = {
    fg = "#E50050"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#bec8e8"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#070614",
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
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#FB9B00",
    nocombine = true
  },
  MiniJump = {
    bg = "#D91C87",
    fg = "#ffffff"
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#D91C87",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#09081a",
    fg = "#33D4B4",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#FB9B00",
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
    bg = "#070614",
    fg = "#33D4B4"
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
    bg = "#070614",
    fg = "#5352CD"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#FB9B00",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#3F3BF5"
  },
  MiniStarterInactive = {
    fg = "#5c6296",
    italic = true
  },
  MiniStarterItem = {
    bg = "#0D0C25",
    fg = "#bec8e8"
  },
  MiniStarterItemBullet = {
    fg = "#3F3BF5"
  },
  MiniStarterItemPrefix = {
    fg = "#FB9B00"
  },
  MiniStarterQuery = {
    fg = "#5352CD"
  },
  MiniStarterSection = {
    fg = "#5352CD"
  },
  MiniStatuslineDevinfo = {
    bg = "#09081a",
    fg = "#7e85b8"
  },
  MiniStatuslineFileinfo = {
    bg = "#09081a",
    fg = "#7e85b8"
  },
  MiniStatuslineFilename = {
    bg = "#09081a",
    fg = "#7e85b8"
  },
  MiniStatuslineInactive = {
    bg = "#09081a",
    fg = "#3F3BF5"
  },
  MiniStatuslineModeCommand = {
    bg = "#FB9B00",
    bold = true,
    fg = "#070614"
  },
  MiniStatuslineModeInsert = {
    bg = "#2A8A6B",
    bold = true,
    fg = "#070614"
  },
  MiniStatuslineModeNormal = {
    bg = "#3F3BF5",
    bold = true,
    fg = "#070614"
  },
  MiniStatuslineModeOther = {
    bg = "#33D4B4",
    bold = true,
    fg = "#070614"
  },
  MiniStatuslineModeReplace = {
    bg = "#E50050",
    bold = true,
    fg = "#070614"
  },
  MiniStatuslineModeVisual = {
    bg = "#D91C87",
    bold = true,
    fg = "#070614"
  },
  MiniSurround = {
    bg = "#FB9B00",
    fg = "#070614"
  },
  MiniTablineCurrent = {
    bg = "#312e55",
    fg = "#bec8e8"
  },
  MiniTablineFill = {
    bg = "#070614"
  },
  MiniTablineHidden = {
    bg = "#09081a",
    fg = "#5c6296"
  },
  MiniTablineModifiedCurrent = {
    bg = "#312e55",
    fg = "#FB9B00"
  },
  MiniTablineModifiedHidden = {
    bg = "#09081a",
    fg = "#b4700b"
  },
  MiniTablineModifiedVisible = {
    bg = "#09081a",
    fg = "#FB9B00"
  },
  MiniTablineTabpagesection = {
    bg = "#312e55",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#09081a",
    fg = "#bec8e8"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#E50050"
  },
  MiniTestPass = {
    bold = true,
    fg = "#2A8A6B"
  },
  MiniTrailspace = {
    bg = "#E50050"
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
    fg = "#bec8e8"
  },
  NavicText = {
    bg = "NONE",
    fg = "#bec8e8"
  },
  NeoTreeDimText = {
    fg = "#312e55"
  },
  NeoTreeFileName = {
    fg = "#5c6296"
  },
  NeoTreeGitModified = {
    fg = "#FFD888"
  },
  NeoTreeGitStaged = {
    fg = "#2A8A6B"
  },
  NeoTreeGitUntracked = {
    fg = "#2A8A6B"
  },
  NeoTreeNormal = {
    bg = "#070614",
    fg = "#5c6296"
  },
  NeoTreeNormalNC = {
    bg = "#070614",
    fg = "#5c6296"
  },
  NeoTreeTabActive = {
    bg = "#070614",
    bold = true,
    fg = "#FB9B00"
  },
  NeoTreeTabInactive = {
    fg = "#3F3BF5"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  NeoTreeTabSeparatorInactive = {
    fg = "#0D0C25"
  },
  NeogitBranch = {
    fg = "#3F3BF5"
  },
  NeogitDiffAddHighlight = {
    bg = "#132834",
    fg = "#2A8A6B"
  },
  NeogitDiffContextHighlight = {
    bg = "#1f1d3d",
    fg = "#7e85b8"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#430930",
    fg = "#E50050"
  },
  NeogitHunkHeader = {
    bg = "#161440",
    fg = "#bec8e8"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#312e55",
    fg = "#3F3BF5"
  },
  NeogitRemote = {
    fg = "#D91C87"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#D91C87"
  },
  NeotestBorder = {
    fg = "#3F3BF5"
  },
  NeotestDir = {
    fg = "#3F3BF5"
  },
  NeotestExpandMarker = {
    fg = "#5c6296"
  },
  NeotestFailed = {
    fg = "#E50050"
  },
  NeotestFile = {
    fg = "#33D4B4"
  },
  NeotestFocused = {
    fg = "#FB9B00"
  },
  NeotestIndent = {
    fg = "#5c6296"
  },
  NeotestMarked = {
    fg = "#5352CD"
  },
  NeotestNamespace = {
    fg = "#33D4B4"
  },
  NeotestPassed = {
    fg = "#2A8A6B"
  },
  NeotestRunning = {
    fg = "#FB9B00"
  },
  NeotestSkipped = {
    fg = "#5c6296"
  },
  NeotestTarget = {
    fg = "#5352CD"
  },
  NeotestTest = {
    fg = "#5c6296"
  },
  NeotestWinSelect = {
    fg = "#D91C87"
  },
  NoiceCmdlineIconInput = {
    fg = "#FB9B00"
  },
  NoiceCmdlineIconLua = {
    fg = "#5352CD"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#FB9B00"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#5352CD"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#FB9B00"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#5352CD"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#7e85b8"
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
  NotifyBackground = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  NotifyDEBUGBody = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  NotifyDEBUGBorder = {
    bg = "#070614",
    fg = "#252647"
  },
  NotifyDEBUGIcon = {
    fg = "#5c6296"
  },
  NotifyDEBUGTitle = {
    fg = "#5c6296"
  },
  NotifyERRORBody = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  NotifyERRORBorder = {
    bg = "#070614",
    fg = "#4e0832"
  },
  NotifyERRORIcon = {
    fg = "#E50050"
  },
  NotifyERRORTitle = {
    fg = "#E50050"
  },
  NotifyINFOBody = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  NotifyINFOBorder = {
    bg = "#070614",
    fg = "#222157"
  },
  NotifyINFOIcon = {
    fg = "#5352CD"
  },
  NotifyINFOTitle = {
    fg = "#5352CD"
  },
  NotifyTRACEBody = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  NotifyTRACEBorder = {
    bg = "#070614",
    fg = "#301f58"
  },
  NotifyTRACEIcon = {
    fg = "#834CCF"
  },
  NotifyTRACETitle = {
    fg = "#834CCF"
  },
  NotifyWARNBody = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  NotifyWARNBorder = {
    bg = "#070614",
    fg = "#54371a"
  },
  NotifyWARNIcon = {
    fg = "#FB9B00"
  },
  NotifyWARNTitle = {
    fg = "#FB9B00"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#3F3BF5"
  },
  NvimTreeGitDeleted = {
    fg = "#E50050"
  },
  NvimTreeGitDirty = {
    fg = "#FFD888"
  },
  NvimTreeGitNew = {
    fg = "#2A8A6B"
  },
  NvimTreeImageFile = {
    fg = "#33D4B4"
  },
  NvimTreeIndentMarker = {
    fg = "#312e55"
  },
  NvimTreeNormal = {
    bg = "#070614",
    fg = "#5c6296"
  },
  NvimTreeNormalNC = {
    bg = "#070614",
    fg = "#5c6296"
  },
  NvimTreeOpenedFile = {
    bg = "#161440"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#3F3BF5"
  },
  NvimTreeSpecialFile = {
    fg = "#D91C87",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#33D4B4"
  },
  NvimTreeWinSeparator = {
    fg = "#09081a"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#5352CD"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#FB9B00"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#D91C87"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#12113a",
    fg = "#3F3BF5"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#5352CD"
  },
  Operator = {
    fg = "#9AC1E5"
  },
  PiAgentResponseLabel = {
    bg = "#33D4B4",
    bold = true,
    fg = "#070614"
  },
  PiBusy = {
    bold = true,
    fg = "#33D4B4"
  },
  PiBusyTime = {
    fg = "#5c6296"
  },
  PiChatHistoryFloatTitle = {
    bg = "#3F3BF5",
    bold = true,
    fg = "#0D0C25"
  },
  PiChatHistoryWinbarTitle = {
    bg = "#3F3BF5",
    bold = true,
    fg = "#0D0C25"
  },
  PiDialogTitle = {
    bold = true,
    fg = "#3F3BF5"
  },
  PiDiffAdd = {
    bg = "#132834"
  },
  PiDiffDelete = {
    bg = "#430930"
  },
  PiDiffLineNr = {
    fg = "#312e55"
  },
  PiDiffWinbar = {
    bg = "#070614"
  },
  PiDiffWinbarCurrent = {
    bold = true,
    fg = "#bec8e8"
  },
  PiDiffWinbarHint = {
    fg = "#5c6296"
  },
  PiDiffWinbarProposed = {
    bold = true,
    fg = "#bec8e8"
  },
  PiError = {
    fg = "#E50050"
  },
  PiFloat = {
    bg = "#070614"
  },
  PiFloatBorder = "FloatBorder",
  PiMention = {
    fg = "#5352CD",
    underline = true
  },
  PiMessageAttachments = {
    fg = "#D91C87",
    italic = true
  },
  PiMessageDateTime = {
    fg = "#5c6296"
  },
  PiStartupLabel = {
    bg = "#5c6296",
    bold = true,
    fg = "#070614"
  },
  PiToolBorder = {
    fg = "#5c6296"
  },
  PiToolCall = {
    fg = "#5c6296"
  },
  PiToolError = {
    fg = "#E50050",
    italic = true
  },
  PiToolHeader = {
    bold = true,
    fg = "#5352CD"
  },
  PiToolOutput = {
    fg = "#bec8e8"
  },
  PiUserMessageLabel = {
    bg = "#5352CD",
    bold = true,
    fg = "#070614"
  },
  PiWarning = {
    fg = "#FB9B00",
    italic = true
  },
  PiWelcome = {
    fg = "#5352CD"
  },
  Pmenu = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  PmenuMatch = {
    bg = "#070614",
    fg = "#5352CD"
  },
  PmenuMatchSel = {
    bg = "#161440",
    fg = "#5352CD"
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
  RainbowDelimiterBlue = {
    fg = "#3F3BF5"
  },
  RainbowDelimiterCyan = {
    fg = "#33D4B4"
  },
  RainbowDelimiterGreen = {
    fg = "#2A8A6B"
  },
  RainbowDelimiterOrange = {
    fg = "#FB9B00"
  },
  RainbowDelimiterRed = {
    fg = "#E50050"
  },
  RainbowDelimiterViolet = {
    fg = "#834CCF"
  },
  RainbowDelimiterYellow = {
    fg = "#FFD888"
  },
  ReferencesCount = {
    fg = "#D91C87"
  },
  ReferencesIcon = {
    fg = "#3F3BF5"
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
    bg = "#230b29"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#E50050"
  },
  RenderMarkdownH7Bg = {
    bg = "#191236"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#834CCF"
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
  ScrollbarError = {
    bg = "NONE",
    fg = "#E50050"
  },
  ScrollbarErrorHandle = {
    bg = "#161440",
    fg = "#E50050"
  },
  ScrollbarHandle = {
    bg = "#161440",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#33D4B4"
  },
  ScrollbarHintHandle = {
    bg = "#161440",
    fg = "#33D4B4"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#5352CD"
  },
  ScrollbarInfoHandle = {
    bg = "#161440",
    fg = "#5352CD"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#834CCF"
  },
  ScrollbarMiscHandle = {
    bg = "#161440",
    fg = "#834CCF"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#FB9B00"
  },
  ScrollbarSearchHandle = {
    bg = "#161440",
    fg = "#FB9B00"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#FB9B00"
  },
  ScrollbarWarnHandle = {
    bg = "#161440",
    fg = "#FB9B00"
  },
  Search = {
    bg = "#312e55",
    fg = "#bec8e8"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#2A8A6B"
  },
  SidekickSignChange = {
    fg = "#FFD888"
  },
  SidekickSignDelete = {
    fg = "#E50050"
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
    fg = "#E50050",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#834CCF",
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
    fg = "#FB9B00"
  },
  SnacksInputIcon = {
    fg = "#5352CD"
  },
  SnacksInputTitle = {
    fg = "#FB9B00"
  },
  SnacksNotifierBorderDebug = {
    bg = "#09081a",
    fg = "#2d2e52"
  },
  SnacksNotifierBorderError = {
    bg = "#09081a",
    fg = "#630736"
  },
  SnacksNotifierBorderInfo = {
    bg = "#09081a",
    fg = "#292868"
  },
  SnacksNotifierBorderTrace = {
    bg = "#09081a",
    fg = "#3c2669"
  },
  SnacksNotifierBorderWarn = {
    bg = "#09081a",
    fg = "#6c4516"
  },
  SnacksNotifierDebug = {
    bg = "#09081a",
    fg = "#bec8e8"
  },
  SnacksNotifierError = {
    bg = "#09081a",
    fg = "#bec8e8"
  },
  SnacksNotifierIconDebug = {
    fg = "#5c6296"
  },
  SnacksNotifierIconError = {
    fg = "#E50050"
  },
  SnacksNotifierIconInfo = {
    fg = "#5352CD"
  },
  SnacksNotifierIconTrace = {
    fg = "#834CCF"
  },
  SnacksNotifierIconWarn = {
    fg = "#FB9B00"
  },
  SnacksNotifierInfo = {
    bg = "#09081a",
    fg = "#bec8e8"
  },
  SnacksNotifierTitleDebug = {
    fg = "#5c6296"
  },
  SnacksNotifierTitleError = {
    fg = "#E50050"
  },
  SnacksNotifierTitleInfo = {
    fg = "#5352CD"
  },
  SnacksNotifierTitleTrace = {
    fg = "#834CCF"
  },
  SnacksNotifierTitleWarn = {
    fg = "#FB9B00"
  },
  SnacksNotifierTrace = {
    bg = "#09081a",
    fg = "#bec8e8"
  },
  SnacksNotifierWarn = {
    bg = "#09081a",
    fg = "#bec8e8"
  },
  SnacksPickerBoxTitle = {
    bg = "#0D0C25",
    fg = "#3F3BF5"
  },
  SnacksPickerInputBorder = {
    bg = "#070614",
    fg = "#FB9B00"
  },
  SnacksPickerInputTitle = {
    bg = "#0D0C25",
    fg = "#3F3BF5"
  },
  SnacksPickerPickWin = {
    bg = "#312e55",
    bold = true,
    fg = "#bec8e8"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#D91C87",
    bold = true,
    fg = "#bec8e8"
  },
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
  Sneak = {
    bg = "#D91C87",
    fg = "#161440"
  },
  SneakScope = {
    bg = "#161440"
  },
  Special = {
    fg = "#4241a3"
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
    bg = "#D91C87",
    fg = "#070614"
  },
  SupermavenSuggestion = {
    fg = "#312e55"
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
    fg = "#070614"
  },
  TargetWord = {
    fg = "#33D4B4"
  },
  TelescopeBorder = {
    bg = "#070614",
    fg = "#3F3BF5"
  },
  TelescopeNormal = {
    bg = "#070614",
    fg = "#bec8e8"
  },
  TelescopePromptBorder = {
    bg = "#070614",
    fg = "#FB9B00"
  },
  TelescopePromptTitle = {
    bg = "#070614",
    fg = "#FB9B00"
  },
  TelescopeResultsComment = {
    fg = "#5c6296"
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
    bg = "#312e55",
    fg = "#D91C87"
  },
  TroubleNormal = "Normal",
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
    fg = "#E50050"
  },
  VimwikiHeader7 = {
    bg = "NONE",
    bold = true,
    fg = "#834CCF"
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
    fg = "#33D4B4"
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
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bold = true,
    fg = "#09081a"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  YaziFloat = "Normal",
  YaziFloatBorder = "Border",
  debugBreakpoint = {
    bg = "#141336",
    fg = "#5352CD"
  },
  debugPC = {
    bg = "#070614"
  },
  diffAdded = {
    bg = "#132834",
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
    bg = "#132834",
    fg = "#5352CD"
  },
  diffOldFile = {
    bg = "#430930",
    fg = "#5352CD"
  },
  diffRemoved = {
    bg = "#430930",
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
    bg = "#312e55",
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
  illuminatedCurWord = {
    bg = "#312e55"
  },
  illuminatedWord = {
    bg = "#312e55"
  },
  lCursor = {
    bg = "#bec8e8",
    fg = "#0D0C25"
  },
  qfFileName = {
    fg = "#3F3BF5"
  },
  qfLineNr = {
    fg = "#5c6296"
  }
}
