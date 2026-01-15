local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors.tool_error_bg = util.blend(colors.error, colors._style == "light" and 0.08 or 0.12, colors.bg_dark)
  colors.tool_diff_added = util.blend(colors.git.add, 0.7, colors._style == "light" and colors.fg or colors.bg_dark)
  colors.tool_diff_removed =
    util.blend(colors.git.delete, 0.65, colors._style == "light" and colors.fg or colors.bg_dark)
  colors.tool_diff_context = colors.fg
  local pi = util.template(
    [[{
  "$schema": "https://raw.githubusercontent.com/badlogic/pi-mono/main/packages/coding-agent/src/modes/interactive/theme/theme-schema.json",
  "name": "${_style_name}",
  "colors": {
    "accent": "${title}",
    "border": "${border}",
    "borderAccent": "${border_color}",
    "borderMuted": "${border_subtle}",
    "success": "${success}",
    "error": "${error}",
    "warning": "${warning}",
    "muted": "${muted}",
    "dim": "${comment}",
    "text": "",
    "thinkingText": "${comment}",

    "selectedBg": "${bg_highlight}",
    "userMessageBg": "${bg_dark}",
    "userMessageText": "",
    "customMessageBg": "${bg_dark}",
    "customMessageText": "",
    "customMessageLabel": "${keyword}",
    "toolPendingBg": "${bg_dark}",
    "toolSuccessBg": "${bg_dark}",
    "toolErrorBg": "${tool_error_bg}",
    "toolTitle": "",
    "toolOutput": "${muted}",

    "mdHeading": "${title}",
    "mdLink": "${link}",
    "mdLinkUrl": "${comment}",
    "mdCode": "${md_inline}",
    "mdCodeBlock": "${fg_dark}",
    "mdCodeBlockBorder": "${border_subtle}",
    "mdQuote": "${comment}",
    "mdQuoteBorder": "${border_subtle}",
    "mdHr": "${markup}",
    "mdListBullet": "${markup}",

    "toolDiffAdded": "${tool_diff_added}",
    "toolDiffRemoved": "${tool_diff_removed}",
    "toolDiffContext": "${tool_diff_context}",

    "syntaxComment": "${comment}",
    "syntaxKeyword": "${keyword}",
    "syntaxFunction": "${functions}",
    "syntaxVariable": "${variable}",
    "syntaxString": "${string}",
    "syntaxNumber": "${constant}",
    "syntaxType": "${type}",
    "syntaxOperator": "${operator}",
    "syntaxPunctuation": "${punctuation}",

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
