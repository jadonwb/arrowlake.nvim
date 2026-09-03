local M = {}

--- Escape text for inclusion in XML element/attribute content.
---@param text string
---@return string
local function escape(text)
  return (text:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"))
end

--- Global editor settings derived from Arrowlake UI roles.
---@param c ColorScheme
---@return table<string, string> ordered key/value pairs
local function global_settings(c)
  return {
    { "background", c.backgrounds.normal },
    { "foreground", c.foregrounds.normal },
    { "caret", c.ui.cursor_bg },
    { "selection", c.backgrounds.visual },
    { "inactiveSelection", c.backgrounds.hover },
    { "lineHighlight", c.backgrounds.hover },
    { "gutterForeground", c.foregrounds.muted },
    { "guide", c.foregrounds.muted },
    { "activeGuide", c.foregrounds.muted },
    { "stackGuide", c.foregrounds.muted },
    { "invisibles", c.foregrounds.darker },
    { "findHighlight", c.backgrounds.search },
    { "findHighlightForeground", c.foregrounds.normal },
    { "selectionBorder", c.border.color },
  }
end

--- Ordered scope rules, broad before specific. Backgrounds are intentionally
--- omitted because Yazi's Syntect renderer discards them.
---@param c ColorScheme
---@return table<string, any>
local function rules(c)
  local ret = {
    -- Comments and documentation
    { name = "Comment", scope = "comment, punctuation.definition.comment", foreground = c.foregrounds.comment },
    { name = "Documentation Comment", scope = "comment.block.documentation, comment.documentation", foreground = c.foregrounds.comment },

    -- Strings and escapes
    { name = "String", scope = "string, punctuation.definition.string", foreground = c.syntax.string },
    { name = "Documentation String", scope = "string.documentation, string.other.documentation", foreground = c.syntax.string_doc },
    { name = "Escape", scope = "constant.character.escape", foreground = c.syntax.string_escape },
    { name = "Regexp", scope = "string.regexp, constant.other.character-class.regexp, keyword.operator.quantifier.regexp, punctuation.definition.group", foreground = c.syntax.operator },
    { name = "Interpolation", scope = "punctuation.definition.template-expression, punctuation.section.embedded", foreground = c.syntax.operator },

    -- Constants and numbers
    { name = "Constant", scope = "constant, constant.numeric, constant.language, constant.character, support.constant, variable.other.constant", foreground = c.syntax.constant },

    -- Keywords, storage and labels
    { name = "Keyword", scope = "keyword, keyword.control, keyword.other.important, storage, storage.type, storage.modifier", foreground = c.syntax.keyword },
    { name = "Label", scope = "entity.name.label, meta.label", foreground = c.ui.label },

    -- Operators and punctuation
    { name = "Operator", scope = "keyword.operator, keyword.operator.arithmetic, keyword.operator.assignment, keyword.operator.bitwise, keyword.operator.comparison, keyword.operator.logical, keyword.operator.ternary, keyword.operator.relational, entity.name.operator", foreground = c.syntax.operator },
    { name = "Punctuation", scope = "punctuation, punctuation.definition, punctuation.section", foreground = c.foregrounds.punctuation },

    -- Variables, parameters and members
    { name = "Variable", scope = "variable, variable.other, support.variable", foreground = c.syntax.variable },
    { name = "Parameter", scope = "variable.parameter, meta.function.parameter", foreground = c.syntax.parameter },
    { name = "Member", scope = "variable.other.member, variable.other.property, meta.object-literal.key, entity.other.attribute-name, support.variable.property, support.type.property-name", foreground = c.foregrounds.member },

    -- Functions and macros
    { name = "Function", scope = "entity.name.function, support.function, variable.function, meta.function-call", foreground = c.syntax.functions },
    { name = "Builtin Function", scope = "support.function.builtin", foreground = c.syntax.functions_builtin },
    { name = "Macro", scope = "support.function.macro, meta.preprocessor, keyword.control.preprocessor", foreground = c.syntax.macro },

    -- Types, classes and constructors
    { name = "Type", scope = "entity.name.type, support.type, entity.name.class, entity.name.namespace, entity.name.module", foreground = c.syntax.type },
    { name = "Builtin Type", scope = "support.type.builtin, storage.type.builtin", foreground = c.syntax.type_builtin },
    { name = "Constructor", scope = "entity.name.function.constructor, entity.name.type.constructor, variable.function.constructor", foreground = c.syntax.constructor },

    -- Tags and attributes
    { name = "Tag", scope = "entity.name.tag, meta.tag", foreground = c.syntax.keyword },
    { name = "Tag Punctuation", scope = "punctuation.definition.tag", foreground = c.foregrounds.punctuation },

    -- Markup
    { name = "Markup Heading", scope = "markup.heading, markup.heading.markdown", foreground = c.ui.header, fontStyle = "bold" },
    { name = "Markup Link", scope = "markup.link, markup.underline.link, string.other.link, constant.other.reference.link", foreground = c.syntax.link },
    { name = "Markup Raw", scope = "markup.raw, markup.inline.raw, markup.fenced_code.block", foreground = c.syntax.md_inline },
    { name = "Markup List", scope = "markup.list", foreground = c.syntax.markup },
    { name = "Markup Quote", scope = "markup.quote", foreground = c.foregrounds.muted, fontStyle = "italic" },
    { name = "Markup Bold", scope = "markup.bold", fontStyle = "bold" },
    { name = "Markup Italic", scope = "markup.italic", fontStyle = "italic" },
    { name = "Markup Bold Italic", scope = "markup.bold markup.italic", fontStyle = "bold italic" },
    { name = "Markup Underline", scope = "markup.underline", fontStyle = "underline" },

    -- Diff markup
    { name = "Inserted", scope = "markup.inserted", foreground = c.git.add },
    { name = "Deleted", scope = "markup.deleted", foreground = c.git.delete },
    { name = "Changed", scope = "markup.changed", foreground = c.git.change },

    -- Diagnostics
    { name = "Info", scope = "markup.info, token.info-token", foreground = c.diagnostics.info },
    { name = "Warning", scope = "markup.warning, token.warn-token", foreground = c.diagnostics.warning },
    { name = "Error", scope = "markup.error, token.error-token", foreground = c.diagnostics.error },
    { name = "Hint", scope = "token.debug-token", foreground = c.diagnostics.hint },
    { name = "Invalid", scope = "invalid, invalid.illegal", foreground = c.diagnostics.error },
    { name = "Deprecated", scope = "invalid.deprecated", foreground = c.diagnostics.warning, fontStyle = "italic" },
  }

  -- Markdown headings cycle through the Arrowlake rainbow.
  for i, color in ipairs(c.rainbow) do
    ret[#ret + 1] = {
      name = "Markdown Heading " .. i,
      scope = "markup.heading." .. i .. ".markdown, heading." .. i .. ".markdown",
      foreground = color,
      fontStyle = "bold",
    }
  end

  return ret
end

--- Append a `<key>`/`<string>` pair.
---@param lines string[]
---@param indent string
---@param key string
---@param value string
local function kv(lines, indent, key, value)
  lines[#lines + 1] = indent .. "<key>" .. key .. "</key>"
  lines[#lines + 1] = indent .. "<string>" .. escape(value) .. "</string>"
end

---@param c ColorScheme
function M.generate(c)
  local style = c._style or "dark"
  local name = "Arrowlake " .. (style == "light" and "Light" or "Dark")

  local lines = {
    '<?xml version="1.0" encoding="UTF-8"?>',
    '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">',
    '<plist version="1.0">',
    "<dict>",
  }

  kv(lines, "\t", "name", name)
  kv(lines, "\t", "colorSpaceName", "sRGB")
  kv(lines, "\t", "semanticClass", "arrowlake.theme." .. style)

  lines[#lines + 1] = "\t<key>settings</key>"
  lines[#lines + 1] = "\t<array>"

  -- Global settings block.
  lines[#lines + 1] = "\t\t<dict>"
  lines[#lines + 1] = "\t\t\t<key>settings</key>"
  lines[#lines + 1] = "\t\t\t<dict>"
  for _, entry in ipairs(global_settings(c)) do
    kv(lines, "\t\t\t\t", entry[1], entry[2])
  end
  lines[#lines + 1] = "\t\t\t</dict>"
  lines[#lines + 1] = "\t\t</dict>"

  -- Scope rules.
  for _, rule in ipairs(rules(c)) do
    lines[#lines + 1] = "\t\t<dict>"
    kv(lines, "\t\t\t", "name", rule.name)
    kv(lines, "\t\t\t", "scope", rule.scope)
    lines[#lines + 1] = "\t\t\t<key>settings</key>"
    lines[#lines + 1] = "\t\t\t<dict>"
    if rule.foreground then
      kv(lines, "\t\t\t\t", "foreground", rule.foreground)
    end
    if rule.fontStyle then
      kv(lines, "\t\t\t\t", "fontStyle", rule.fontStyle)
    end
    lines[#lines + 1] = "\t\t\t</dict>"
    lines[#lines + 1] = "\t\t</dict>"
  end

  lines[#lines + 1] = "\t</array>"
  lines[#lines + 1] = "</dict>"
  lines[#lines + 1] = "</plist>"

  return table.concat(lines, "\n") .. "\n"
end

return M
