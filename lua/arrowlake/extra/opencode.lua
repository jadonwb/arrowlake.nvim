local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
--- @return table<string, string>
local function generate_defs(colors)
  local defs = {}

  local keys = vim.tbl_keys(colors)
  table.sort(keys)
  for _, key in ipairs(keys) do
    local value = colors[key]
    -- Skip keys that start with underscore (metadata) and "none"
    if not key:match("^_") and key ~= "none" then
      if type(value) == "string" then
        defs[key] = value
      elseif type(value) == "table" then
        -- Handle nested tables like git, diff, terminal
        for subkey, subvalue in pairs(value) do
          if type(subvalue) == "string" then
            defs[key .. "_" .. subkey] = subvalue
          end
        end
      end
    end
  end

  return defs
end

--- @param defs table<string, string>
--- @param indent number Number of spaces to indent
--- @return string
local function format_defs_json(defs, indent)
  local defs_lines = {}

  -- Sort keys for consistent output
  local sorted_keys = {}
  for k in pairs(defs) do
    table.insert(sorted_keys, k)
  end
  table.sort(sorted_keys)

  for _, k in ipairs(sorted_keys) do
    table.insert(defs_lines, string.format('%s"%s": "%s"', string.rep(" ", indent), k, defs[k]))
  end

  return table.concat(defs_lines, ",\n")
end

--- @param colors ColorScheme
function M.generate(colors)
  colors = vim.deepcopy(colors)

  local defs = generate_defs(colors)
  colors.opencode_defs = format_defs_json(defs, 4)

  local opencode = util.template(
    [[{
  "$schema": "https://opencode.ai/theme.json",
  "defs": {
${opencode_defs}
  },
  "theme": {
    "primary": {
      "dark": "primary",
      "light": "primary"
    },
    "secondary": {
      "dark": "secondary",
      "light": "secondary"
    },
    "accent": {
      "dark": "focus",
      "light": "focus"
    },
    "error": {
      "dark": "diagnostics_error",
      "light": "diagnostics_error"
    },
    "warning": {
      "dark": "diagnostics_warning",
      "light": "diagnostics_warning"
    },
    "success": {
      "dark": "diagnostics_success",
      "light": "diagnostics_success"
    },
    "info": {
      "dark": "diagnostics_info",
      "light": "diagnostics_info"
    },
    "text": {
      "dark": "foregrounds_normal",
      "light": "foregrounds_normal"
    },
    "textMuted": {
      "dark": "foregrounds_muted",
      "light": "foregrounds_muted"
    },
    "background": {
      "dark": "backgrounds_normal",
      "light": "backgrounds_normal"
    },
    "backgroundPanel": {
      "dark": "backgrounds_float",
      "light": "backgrounds_float"
    },
    "backgroundElement": {
      "dark": "backgrounds_float",
      "light": "backgrounds_float"
    },
    "border": {
      "dark": "border_color",
      "light": "border_color"
    },
    "borderActive": {
      "dark": "border_active",
      "light": "border_active"
    },
    "borderSubtle": {
      "dark": "border_subtle",
      "light": "border_subtle"
    },
    "diffAdded": {
      "dark": "git_add",
      "light": "git_add"
    },
    "diffRemoved": {
      "dark": "git_delete",
      "light": "git_delete"
    },
    "diffContext": {
      "dark": "foregrounds_dark",
      "light": "foregrounds_dark"
    },
    "diffHunkHeader": {
      "dark": "foregrounds_comment",
      "light": "foregrounds_comment"
    },
    "diffHighlightAdded": {
      "dark": "git_add",
      "light": "git_add"
    },
    "diffHighlightRemoved": {
      "dark": "git_delete",
      "light": "git_delete"
    },
    "diffAddedBg": {
      "dark": "diff_add",
      "light": "diff_add"
    },
    "diffRemovedBg": {
      "dark": "diff_delete",
      "light": "diff_delete"
    },
    "diffContextBg": {
      "dark": "backgrounds_dark",
      "light": "backgrounds_dark"
    },
    "diffLineNumber": {
      "dark": "foregrounds_muted",
      "light": "foregrounds_muted"
    },
    "diffAddedLineNumberBg": {
      "dark": "diff_add",
      "light": "diff_add"
    },
    "diffRemovedLineNumberBg": {
      "dark": "diff_delete",
      "light": "diff_delete"
    },
    "markdownText": {
      "dark": "foregrounds_normal",
      "light": "foregrounds_normal"
    },
    "markdownHeading": {
      "dark": "ui_header",
      "light": "ui_header"
    },
    "markdownLink": {
      "dark": "syntax_link",
      "light": "syntax_link"
    },
    "markdownLinkText": {
      "dark": "syntax_link",
      "light": "syntax_link"
    },
    "markdownCode": {
      "dark": "syntax_md_inline",
      "light": "syntax_md_inline"
    },
    "markdownBlockQuote": {
      "dark": "foregrounds_comment",
      "light": "foregrounds_comment"
    },
    "markdownEmph": {
      "dark": "foregrounds_normal",
      "light": "foregrounds_normal"
    },
    "markdownStrong": {
      "dark": "foregrounds_normal",
      "light": "foregrounds_normal"
    },
    "markdownHorizontalRule": {
      "dark": "foregrounds_muted",
      "light": "foregrounds_muted"
    },
    "markdownListItem": {
      "dark": "syntax_markup",
      "light": "syntax_markup"
    },
    "markdownListEnumeration": {
      "dark": "syntax_markup",
      "light": "syntax_markup"
    },
    "markdownImage": {
      "dark": "syntax_link",
      "light": "syntax_link"
    },
    "markdownImageText": {
      "dark": "syntax_link",
      "light": "syntax_link"
    },
    "markdownCodeBlock": {
      "dark": "foregrounds_normal",
      "light": "foregrounds_normal"
    },
    "syntaxComment": {
      "dark": "foregrounds_comment",
      "light": "foregrounds_comment"
    },
    "syntaxKeyword": {
      "dark": "syntax_keyword",
      "light": "syntax_keyword"
    },
    "syntaxFunction": {
      "dark": "syntax_functions",
      "light": "syntax_functions"
    },
    "syntaxVariable": {
      "dark": "syntax_variable",
      "light": "syntax_variable"
    },
    "syntaxString": {
      "dark": "syntax_string",
      "light": "syntax_string"
    },
    "syntaxNumber": {
      "dark": "syntax_constant",
      "light": "syntax_constant"
    },
    "syntaxType": {
      "dark": "syntax_type",
      "light": "syntax_type"
    },
    "syntaxOperator": {
      "dark": "syntax_operator",
      "light": "syntax_operator"
    },
    "syntaxPunctuation": {
      "dark": "foregrounds_punctuation",
      "light": "foregrounds_punctuation"
    }
  }
}]],
    colors
  )

  return opencode
end

return M
