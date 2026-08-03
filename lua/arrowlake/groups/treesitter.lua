local Util = require("arrowlake.util")

local M = {}

--[[

TODO: I want to make this be able to go even further, and possibly allow a dynamic way to override per language specific elements
this would allow me to to overcome the keyword vs operator issue for things like sizeof, new, delete, etc. in cpp
based on the .tsx examples below it feels very possible, can supply table like:

opts = {
  -- or could say languages/sematic_tokens, whatever
  treesitter = {
    cpp = {
      ["@
    }
  }

  -- this is just the basic idea, could be different
  -- also need to think about how to do the same thing for semantic_tokens from lsp

--]]

---@type arrowlake.HighlightsFn
---@param c arrowlake.ColorScheme
---@param opts arrowlake.Config
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    ["@annotation"]                 = "PreProc",
    ["@attribute"]                  = "PreProc",
    ["@boolean"]                    = "Boolean",
    ["@character"]                  = "Character",
    ["@character.printf"]           = "SpecialChar",
    ["@character.special"]          = "SpecialChar",
    ["@comment"]                    = "Comment",
    ["@comment.error"]              = { fg = c.diagnostics.error },
    ["@comment.hint"]               = { fg = c.diagnostics.hint },
    ["@comment.info"]               = { fg = c.diagnostics.info },
    ["@comment.note"]               = { fg = c.diagnostics.hint },
    ["@comment.todo"]               = { fg = c.diagnostics.todo },
    ["@comment.warning"]            = { fg = c.diagnostics.warning },
    ["@constant"]                   = "Constant",
    ["@constant.builtin"]           = "Special", -- TODO: consider making "Constant", or a blended version of it
    ["@constant.macro"]             = "Define",
    ["@constructor"]                = { fg = c.syntax.constructor }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ["@constructor.tsx"]            = { fg = c.syntax.type },
    ["@diff.delta"]                 = "DiffChange",
    ["@diff.minus"]                 = "DiffDelete",
    ["@diff.plus"]                  = "DiffAdd",
    ["@function"]                   = "Function",
    ["@function.builtin"]           = { fg = c.syntax.functions_builtin, style = opts.styles.functions },
    ["@function.call"]              = "@function",
    ["@function.macro"]             = "Macro",
    ["@function.method"]            = "Function",
    ["@function.method.call"]       = "@function.method",
    ["@keyword"]                    = { fg = c.syntax.keyword, style = opts.styles.keywords }, -- For keywords that don't fall in previous categories.
    ["@keyword.conditional"]        = "Conditional",
    ["@keyword.coroutine"]          = "@keyword",
    ["@keyword.debug"]              = "Debug",
    ["@keyword.directive"]          = "PreProc",
    ["@keyword.directive.define"]   = "Define",
    ["@keyword.exception"]          = "Exception",
    ["@keyword.function"]           = { fg = c.syntax.functions, style = opts.styles.functions }, -- For keywords used to define a function.
    ["@keyword.import"]             = "Include",
    ["@keyword.operator"]           = "@keyword",
    ["@keyword.repeat"]             = "Repeat",
    ["@keyword.return"]             = "@keyword",
    ["@keyword.storage"]            = "StorageClass",
    ["@label"]                      = { fg = c.ui.label }, -- For labels: `label:` in C and `:label:` in Lua.
    ["@markup"]                     = "@none",
    ["@markup.emphasis"]            = { italic = true },
    ["@markup.environment"]         = "Macro",
    ["@markup.environment.name"]    = "Type",
    ["@markup.heading"]             = "Title",
    ["@markup.italic"]              = { italic = true },
    ["@markup.link"]                = { fg = c.syntax.link },
    ["@markup.link.label"]          = "SpecialChar",
    ["@markup.link.label.symbol"]   = "Identifier",
    ["@markup.link.url"]            = "Underlined",
    ["@markup.list"]                = { fg = c.syntax.markup }, -- For special punctutation that does not fall in the categories before.
    ["@markup.list.checked"]        = { fg = c.diagnostics.success }, -- For brackets and parens.
    ["@markup.list.markdown"]       = { fg = c.syntax.markup, bold = true },
    ["@markup.list.unchecked"]      = { fg = c.diagnostics.hint }, -- For brackets and parens.
    ["@markup.math"]                = "Special",
    ["@markup.raw"]                 = "String",
    ["@markup.raw.markdown_inline"] = { bg = c.backgrounds.code, fg = c.syntax.md_inline },
    ["@markup.strikethrough"]       = { strikethrough = true },
    ["@markup.strong"]              = { bold = true },
    ["@markup.underline"]           = { underline = true },
    ["@module"]                     = "Include",
    ["@module.builtin"]             = { fg = c.ui.attention }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@namespace.builtin"]          = "@variable.builtin",
    ["@none"]                       = {},
    ["@number"]                     = "Number",
    ["@number.float"]               = "Float",
    ["@operator"]                   = { fg = c.syntax.operator }, -- For any operator: `+`, but also `->` and `*` in C.
    ["@property"]                   = { fg = c.foregrounds.member },
    ["@punctuation.bracket"]        = { fg = c.foregrounds.punctuation }, -- For brackets and parens.
    ["@punctuation.delimiter"]      = { fg = c.foregrounds.punctuation }, -- For delimiters ie: `.`
    ["@punctuation.special"]        = { fg = c.syntax.operator }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special.markdown"] = { fg = c.syntax.markup }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@string"]                     = "String",
    ["@string.documentation"]       = { fg = c.syntax.string_doc },
    ["@string.escape"]              = { fg = c.syntax.string_escape }, -- For escape characters within a string.
    ["@string.regexp"]              = { fg = c.syntax.operator }, -- For regexes.
    ["@tag"]                        = { fg = c.syntax.keyword },
    ["@tag.attribute"]              = "@property",
    ["@tag.delimiter"]              = "Delimiter",
    ["@tag.delimiter.tsx"]          = { fg = Util.blend_bg(c.syntax.type, 0.7) },
    ["@tag.tsx"]                    = "@tag",
    ["@tag.javascript"]             = "@tag",
    ["@type"]                       = "Type",
    ["@type.builtin"]               = { fg = c.syntax.type_builtin },
    ["@type.definition"]            = "Typedef",
    ["@type.qualifier"]             = "@keyword",
    ["@variable"]                   = { fg = c.syntax.variable, style = opts.styles.variables }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"]           = { fg = c.ui.attention }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@variable.member"]            = { fg = c.foregrounds.member }, -- For fields.
    ["@variable.parameter"]         = { fg = c.syntax.parameter }, -- For parameters of a function.
    ["@variable.parameter.builtin"] = { fg = Util.blend_fg(c.syntax.parameter, 0.8) }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
  }

  for i, color in ipairs(c.rainbow) do
    ret["@markup.heading." .. i .. ".markdown"] = { fg = color, bold = true, bg = Util.blend_bg(color, 0.1) }
  end
  return ret
end

return M
