local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors.tool_error_bg = util.blend(colors.diagnostics.error, colors._style == "light" and 0.08 or 0.12, colors.bg_dark)
  colors.tool_diff_added = util.blend(colors.git.add, 0.7, colors._style == "light" and colors.fg or colors.bg_dark)
  colors.tool_diff_removed =
    util.blend(colors.git.delete, 0.65, colors._style == "light" and colors.fg or colors.bg_dark)
  colors.tool_diff_context = colors.fg
  local pi = util.template(
    [[{
  "$schema": "https://raw.githubusercontent.com/badlogic/pi-mono/main/packages/coding-agent/src/modes/interactive/theme/theme-schema.json",
  "name": "${_style_name}",
  "colors": {
    "accent": "${syntax.title}",
    "border": "${border.subtle}",
    "borderAccent": "${border.color}",
    "borderMuted": "${border.subtle}",
    "success": "${diagnostics.success}",
    "error": "${diagnostics.error}",
    "warning": "${diagnostics.warning}",
    "muted": "${foregrounds.muted}",
    "dim": "${foregrounds.comment}",
    "text": "",
    "thinkingText": "${foregrounds.comment}",

    "selectedBg": "${backgrounds.highlight}",
    "userMessageBg": "${bg_dark}",
    "userMessageText": "",
    "customMessageBg": "${bg_dark}",
    "customMessageText": "",
    "customMessageLabel": "${syntax.keyword}",
    "toolPendingBg": "${bg_dark}",
    "toolSuccessBg": "${bg_dark}",
    "toolErrorBg": "${tool_error_bg}",
    "toolTitle": "",
    "toolOutput": "${foregrounds.muted}",

    "mdHeading": "${syntax.title}",
    "mdLink": "${syntax.link}",
    "mdLinkUrl": "${foregrounds.comment}",
    "mdCode": "${syntax.md_inline}",
    "mdCodeBlock": "${fg_dark}",
    "mdCodeBlockBorder": "${border.subtle}",
    "mdQuote": "${foregrounds.comment}",
    "mdQuoteBorder": "${border.subtle}",
    "mdHr": "${syntax.markup}",
    "mdListBullet": "${syntax.markup}",

    "toolDiffAdded": "${tool_diff_added}",
    "toolDiffRemoved": "${tool_diff_removed}",
    "toolDiffContext": "${tool_diff_context}",

    "syntaxComment": "${foregrounds.comment}",
    "syntaxKeyword": "${syntax.keyword}",
    "syntaxFunction": "${syntax.functions}",
    "syntaxVariable": "${syntax.variable}",
    "syntaxString": "${syntax.string}",
    "syntaxNumber": "${syntax.constant}",
    "syntaxType": "${syntax.type}",
    "syntaxOperator": "${syntax.operator}",
    "syntaxPunctuation": "${foregrounds.punctuation}",

    "thinkingOff": "${fg}",
    "thinkingMinimal": "${cyan}",
    "thinkingLow": "${green}",
    "thinkingMedium": "${yellow}",
    "thinkingHigh": "${orange}",
    "thinkingXhigh": "${red}",

    "bashMode": "${focus}"
  }
}
]],
    colors
  )
  return pi
end

return M
