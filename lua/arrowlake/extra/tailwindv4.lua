local util = require("arrowlake.util")

local M = {}

-- FIXME: what is this file supposed to do? list all colors in the theme or something?

--- @param colors ColorScheme
function M.generate(colors)
  local tailwindv4 = util.template(
    [[
@theme inline {
  --color-arrowlake-${_style}-bg: oklch(from ${bg} l c h);
  --color-arrowlake-${_style}-bg-active-parameter: oklch(from ${backgrounds.active_parameter} l c h);
  --color-arrowlake-${_style}-bg-dark: oklch(from ${bg_dark} l c h);
  --color-arrowlake-${_style}-bg-darker: oklch(from ${bg_darker} l c h);
  --color-arrowlake-${_style}-bg-float: oklch(from ${backgrounds.float} l c h);
  --color-arrowlake-${_style}-bg-highlight: oklch(from ${backgrounds.highlight} l c h);
  --color-arrowlake-${_style}-bg-hover: oklch(from ${backgrounds.hover} l c h);
  --color-arrowlake-${_style}-bg-menu-sel: oklch(from ${backgrounds.highlight} l c h);
  --color-arrowlake-${_style}-bg-search: oklch(from ${backgrounds.search} l c h);
  --color-arrowlake-${_style}-bg-search-current: oklch(from ${backgrounds.search_current} l c h);
  --color-arrowlake-${_style}-bg-sidebar: oklch(from ${backgrounds.sidebar} l c h);
  --color-arrowlake-${_style}-bg-status: oklch(from ${status.bg} l c h);
  --color-arrowlake-${_style}-bg-visual: oklch(from ${backgrounds.visual} l c h);
  --color-arrowlake-${_style}-ai: oklch(from ${ui.ai} l c h);
  --color-arrowlake-${_style}-black: oklch(from ${terminal.black} l c h);
  --color-arrowlake-${_style}-black-bright: oklch(from ${terminal.black_bright} l c h);
  --color-arrowlake-${_style}-blue: oklch(from ${blue} l c h);
  --color-arrowlake-${_style}-blue-bright: oklch(from ${terminal.blue_bright} l c h);
  --color-arrowlake-${_style}-regexp: oklch(from ${syntax.operator} l c h);
  --color-arrowlake-${_style}-border: oklch(from ${border.subtle} l c h);
  --color-arrowlake-${_style}-border-highlight: oklch(from ${border.color} l c h);
  --color-arrowlake-${_style}-comment: oklch(from ${foregrounds.comment} l c h);
  --color-arrowlake-${_style}-cyan: oklch(from ${cyan} l c h);
  --color-arrowlake-${_style}-cyan-bright: oklch(from ${terminal.cyan_bright} l c h);
  --color-arrowlake-${_style}-directory: oklch(from ${syntax.title} l c h);
  --color-arrowlake-${_style}-diff-add: oklch(from ${diff.add} l c h);
  --color-arrowlake-${_style}-diff-change: oklch(from ${diff.change} l c h);
  --color-arrowlake-${_style}-diff-delete: oklch(from ${diff.delete} l c h);
  --color-arrowlake-${_style}-diff-text: oklch(from ${diff.text} l c h);
  --color-arrowlake-${_style}-error: oklch(from ${diagnostics.error} l c h);
  --color-arrowlake-${_style}-fg: oklch(from ${fg} l c h);
  --color-arrowlake-${_style}-fg-dark: oklch(from ${fg_dark} l c h);
  --color-arrowlake-${_style}-fg-float: oklch(from ${fg} l c h);
  --color-arrowlake-${_style}-fg-gutter: oklch(from ${fg_gutter} l c h);
  --color-arrowlake-${_style}-fg-sidebar: oklch(from ${foregrounds.sidebar} l c h);
  --color-arrowlake-${_style}-git-add: oklch(from ${git.add} l c h);
  --color-arrowlake-${_style}-git-change: oklch(from ${git.change} l c h);
  --color-arrowlake-${_style}-git-delete: oklch(from ${git.delete} l c h);
  --color-arrowlake-${_style}-git-ignore: oklch(from ${git.ignore} l c h);
  --color-arrowlake-${_style}-green: oklch(from ${green} l c h);
  --color-arrowlake-${_style}-hint: oklch(from ${diagnostics.hint} l c h);
  --color-arrowlake-${_style}-info: oklch(from ${diagnostics.info} l c h);
  --color-arrowlake-${_style}-attention: oklch(from ${ui.attention} l c h);
  --color-arrowlake-${_style}-link: oklch(from ${syntax.link} l c h);
  --color-arrowlake-${_style}-magenta: oklch(from ${magenta} l c h);
  --color-arrowlake-${_style}-magenta-bright: oklch(from ${terminal.magenta_bright} l c h);
  --color-arrowlake-${_style}-match: oklch(from ${secondary} l c h);
  --color-arrowlake-${_style}-primary: oklch(from ${primary} l c h);
  --color-arrowlake-${_style}-orange: oklch(from ${orange} l c h);
  --color-arrowlake-${_style}-operator: oklch(from ${syntax.operator} l c h);
  --color-arrowlake-${_style}-purple: oklch(from ${purple} l c h);
  --color-arrowlake-${_style}-secondary: oklch(from ${secondary} l c h);
  --color-arrowlake-${_style}-rainbow1: var(--color-arrowlake-${_style}-blue);
  --color-arrowlake-${_style}-rainbow2: var(--color-arrowlake-${_style}-yellow);
  --color-arrowlake-${_style}-rainbow3: var(--color-arrowlake-${_style}-green);
  --color-arrowlake-${_style}-rainbow4: var(--color-arrowlake-${_style}-cyan);
  --color-arrowlake-${_style}-rainbow5: var(--color-arrowlake-${_style}-magenta);
  --color-arrowlake-${_style}-rainbow6: var(--color-arrowlake-${_style}-purple);
  --color-arrowlake-${_style}-rainbow7: var(--color-arrowlake-${_style}-orange);
  --color-arrowlake-${_style}-rainbow8: var(--color-arrowlake-${_style}-red);
  --color-arrowlake-${_style}-red: oklch(from ${red} l c h);
  --color-arrowlake-${_style}-red-bright: oklch(from ${terminal.red_bright} l c h);
  --color-arrowlake-${_style}-error: oklch(from ${diagnostics.error} l c h);
  --color-arrowlake-${_style}-scope: oklch(from ${secondary} l c h);
  --color-arrowlake-${_style}-success: oklch(from ${diagnostics.success} l c h);
  --color-arrowlake-${_style}-cyan: oklch(from ${cyan} l c h);
  --color-arrowlake-${_style}-list: oklch(from ${syntax.operator} l c h);
  --color-arrowlake-${_style}-todo: oklch(from ${diagnostics.todo} l c h);
  --color-arrowlake-${_style}-title: oklch(from ${syntax.title} l c h);
  --color-arrowlake-${_style}-trace: oklch(from ${diagnostics.trace} l c h);
  --color-arrowlake-${_style}-warning: oklch(from ${diagnostics.warning} l c h);
  --color-arrowlake-${_style}-yellow: oklch(from ${yellow} l c h);
  --color-arrowlake-${_style}-yellow-bright: oklch(from ${terminal.yellow_bright} l c h);
}]],
    colors
  )

  return tailwindv4
end

return M
