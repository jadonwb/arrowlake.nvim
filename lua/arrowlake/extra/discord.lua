local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local fish = util.template(
    [[
.theme-light,
.theme-dark {
  --header-primary: ${fg};
  --header-secondary: ${fg_dark};
  --text-normal: ${fg};
  --text-muted: ${fg_dark};
  --text-link: ${blue};
  --text-link-low-saturation: ${syntax.operator};
  --text-positive: ${diagnostics.hint};
  --text-warning: ${diagnostics.warning};
  --text-danger: ${red};
  --text-brand: ${blue};
  --background-primary: ${bg};
  --bg-base-primary: ${bg};
  --background-secondary: ${bg_dark};
  --background-secondary-alt: ${bg_dark};
  --background-tertiary: ${bg_darker};
  --background-accent: ${selection};
  --background-floating: ${backgrounds.float};
  --background-nested-floating: ${bg_dark};
  --background-mobile-primary: ${bg};
  --background-mobile-secondary: ${bg_dark};
  --bg-base-secondary: ${bg_dark};
  --bg-surface-raised: ${bg_dark};
  --home-background: ${bg};
  --chat-background: ${bg};
  --chat-border: ${backgrounds.highlight};
  --chat-input-container-background: ${bg};
  --background-modifier-hover: ${foregrounds.comment}26;
  --background-modifier-selected: ${foregrounds.comment}32;
  --background-modifier-accent: ${foregrounds.comment}42;
  --background-modifier-active: ${foregrounds.comment}2B;
  --info-positive-background: ${green}26;
  --info-positive-foreground: ${diagnostics.hint};
  --info-positive-text: ${fg};
  --brand-500: ${selection};
  --brand-560: ${blue};
  --info-warning-background: ${yellow}26;
  --info-warning-foreground: ${diagnostics.warning};
  --info-warning-text: ${fg};
  --info-danger-background:${red}26;
  --info-danger-foreground: ${red};
  --info-danger-text: ${fg};
  --info-help-background: ${syntax.operator}26;
  --info-help-foreground: ${diagnostics.info};
  --info-help-text: ${fg};
  --status-positive-background: ${diagnostics.hint};
  --status-positive-text: ${bg};
  --status-warning-background: ${diagnostics.warning};
  --status-warning-text: ${bg};
  --status-danger-background: ${red};
  --status-danger-text: ${bg};
  --status-danger: ${red};
  --status-positive: ${diagnostics.hint};
  --status-warning: ${diagnostics.warning};
  --status-yellow-400: ${diagnostics.warning};
  --status-green-600: ${diagnostics.hint};
  --primary-dark-600: ${bg};
  --status-yellow-560: ${diagnostics.warning};
  --status-red-500: ${red};
  --status-red-530: ${red};
  --status-yellow-500: ${diagnostics.warning};
  --black-500: ${backgrounds.highlight};
  --green-360: ${diagnostics.hint};
  --yellow-360: ${diagnostics.warning};
  --yellow-300: ${diagnostics.warning};
  --red-400: ${red};
  --primary-100: ${syntax.operator};
  --primary-300: ${syntax.operator};
  --primary-400: ${syntax.operator};
  --primary-dark-700: ${backgrounds.highlight};
  --primary-800: ${backgrounds.highlight};
  --status-green-560: ${diagnostics.hint};
  --white-400: ${fg};
  --white-500: ${fg};
  --guild-boosting-pink: ${magenta};
  --premium-perk-yellow: ${diagnostics.warning};
  --premium-perk-purple: ${purple};
  --premium-perk-dark-blue: ${blue};
  --premium-perk-light-blue: ${secondary};
  --premium-perk-blue: ${blue};
  --premium-perk-green: ${diagnostics.hint};
  --premium-perk-pink: ${magenta};
  --premium-perk-orange: ${orange};
  --status-green-400: ${diagnostics.hint};
  --button-danger-background: ${diagnostics.error};
  --button-danger-background-hover: ${red};
  --button-danger-background-active: ${syntax.operator};
  --button-danger-background-disabled: ${red};
  --button-positive-background: ${diagnostics.hint};
  --button-positive-background-hover: ${diagnostics.success};
  --button-positive-background-active: ${git.add};
  --button-positive-background-disabled: ${diagnostics.hint};
  --button-secondary-background: ${foregrounds.comment};
  --button-secondary-background-hover: ${fg_gutter};
  --button-secondary-background-active: ${fg_gutter};
  --button-secondary-background-disabled: ${foregrounds.comment};
  --button-outline-danger-text: ${fg};
  --button-outline-danger-border: ${diagnostics.error};
  --button-outline-danger-background: transparent;
  --button-outline-danger-background-hover: ${red};
  --button-outline-danger-text-hover: ${bg};
  --button-outline-danger-border-hover: ${red};
  --button-outline-danger-background-active: ${diagnostics.error};
  --button-outline-danger-text-active: ${bg};
  --button-outline-danger-border-active: ${diagnostics.error};
  --button-outline-positive-text: ${fg};
  --button-outline-positive-border: ${diagnostics.hint};
  --button-outline-positive-background: transparent;
  --button-outline-positive-background-hover: ${green};
  --button-outline-positive-text-hover: ${bg};
  --button-outline-positive-border-hover: ${green};
  --button-outline-positive-background-active: ${diagnostics.success};
  --button-outline-positive-text-active: ${bg};
  --button-outline-positive-border-active: ${green};
  --button-outline-brand-text: ${fg};
  --button-outline-brand-border: ${blue};
  --button-outline-brand-background: transparent;
  --button-outline-brand-background-hover: ${secondary};
  --button-outline-brand-text-hover: ${bg};
  --button-outline-brand-border-hover: ${secondary};
  --button-outline-brand-background-active: ${blue};
  --button-outline-brand-text-active: ${bg};
  --button-outline-brand-border-active: ${secondary};
  --button-outline-primary-text: ${fg};
  --button-outline-primary-border: ${foregrounds.comment};
  --button-outline-primary-background: transparent;
  --button-outline-primary-background-hover: ${foregrounds.comment};
  --button-outline-primary-text-hover: ${bg};
  --button-outline-primary-border-hover: ${foregrounds.comment};
  --button-outline-primary-background-active: ${foregrounds.comment};
  --button-outline-primary-text-active: ${bg};
  --button-outline-primary-border-active: ${foregrounds.comment};
  --modal-background: ${bg};
  --modal-footer-background: ${backgrounds.highlight};
  --scrollbar-thin-thumb: ${blue};
  --scrollbar-thin-track: transparent;
  --scrollbar-auto-thumb: ${blue};
  --scrollbar-auto-track: ${backgrounds.highlight};
  --scrollbar-auto-scrollbar-color-thumb: ${blue};
  --scrollbar-auto-scrollbar-color-track: ${backgrounds.highlight};
  --input-background: ${backgrounds.highlight};
  --input-placeholder-text: ${foregrounds.comment};
  --logo-primary: ${fg};
  --control-brand-foreground: ${blue};
  --control-brand-foreground-new: ${blue};
  --mention-foreground: ${blue};
  --mention-background: ${terminal.black};
  --background-mentioned: ${yellow}19;
  --background-mentioned-hover: ${yellow}14;
  --background-message-hover: ${bg_dark}3F;
  --background-message-automod: ${magenta}0C;
  --background-message-automod-hover: ${magenta}19;
  --background-message-highlight: ${blue}14;
  --background-message-highlight-hover: ${blue}0F;
  --channels-default: ${fg_dark};
  --channel-icon: ${blue}99;
  --channel-text-area-placeholder: ${foregrounds.comment}7F;
  --channeltextarea-background: ${bg_dark};
  --activity-card-background: ${backgrounds.highlight};
  --textbox-markdown-syntax: ${fg};
  --spoiler-revealed-background: ${backgrounds.highlight};
  --spoiler-hidden-background: ${foregrounds.comment};
  --android-navigation-bar-background: ${backgrounds.highlight};
  --android-ripple: ${terminal.black}4C;
  --bg-mod-faint: ${bg_dark};
  --bg-mod-subtle: ${terminal.black};
  --focus-primary: ${blue};
  --interactive-normal: ${fg};
  --interactive-muted: ${foregrounds.comment}4C;
  --interactive-hover: ${fg};
  --interactive-active: ${fg};
  --search-popout-option-non-text-color: ${fg_dark};
  --__spoiler-background-color--hidden: ${diff.text};
  --__spoiler-warning-background-color: ${purple};
}

div[class*="autocomplete_"] {
    background-color: ${backgrounds.float} !important;
}

div[class*="autocomplete_"]
div[class*="categoryHeader"] {
    background-color: ${backgrounds.float} !important;
}

rect[mask="url(#svg-mask-status-online)"] {
    fill: ${git.add};
}

rect[mask="url(#svg-mask-status-idle)"] {
    fill: ${yellow};
}

rect[mask="url(#svg-mask-status-dnd)"] {
    fill: ${diagnostics.error};
}

rect[mask="url(#svg-mask-status-offline)"] {
    fill: ${foregrounds.comment};
}

/* hljs */
/* stolen from https://github.com/x6r/dracula/blob/main/addons/hljs-styling.scss :D */
:root {
  /* ---- Default Colors -- */
  --background: var(--background-secondary);
  --text-default: ${fg_dark};
  --color-1: ${red};
  --color-2: ${orange};
  --color-3: ${yellow};
  --color-4: ${green};
  --color-5: ${diagnostics.success};
  --color-6: ${syntax.operator};
  --color-7: ${diagnostics.info};
  --color-8: ${cyan};
  --color-9: ${blue};
  --color-10: ${magenta};
  --color-11: ${fg};
  /* ---- HLJS Default -- */
  --hljs-attribute: var(--color-7);
  --hljs-nomarkup: var(--color-8);
  --hljs-variable: var(--color-11);
  --hljs-meta: var(--color-8);
  --hljs-meta-string: var(--color-4);
  --hljs-meta-keyword: var(--hljs-meta);
  --hljs-literal: var(--color-2);
  --hljs-section: var(--color-9);
  --hljs-number: var(--color-2);
  --hljs-name: var(--color-4);
  --hljs-selector-tag: var(--color-4);
  --hljs-selector-class: var(--color-9);
  --hljs-selector-attr: var(--color-7);
  --hljs-selector-pseudo: var(--color-7);
  --hljs-selector-id: var(--hljs-selector-class);
  --hljs-keyword: var(--color-10);
  --hljs-built_in: var(--color-3);
  --hljs-title: var(--color-9);
  --hljs-link: var(--color-5);
  --hljs-bullet: var(--color-10);
  --hljs-symbol: var(--color-1);
  --hljs-addition: var(--color-1);
  --hljs-deletion: var(--color-5);
  --hljs-attr: var(--color-2);
  --hljs-punctuation: var(--text-default);
  --hljs-regexp: var(--color-6);
  --hljs-type: var(--color-10);
  --hljs-operator: var(--color-10);
  --hljs-rest_arg: var(--text-default);
  --hljs-template-variable: var(--color-11);
  /* ---- HLJS Specific -- */
  /* --> Params */
  --hljs-params: var(--text-default);
  --hljs-params-attr: var(--hljs-params);
  /* --> Comment */
  --hljs-comment: ${foregrounds.comment};
  --hljs-comment-doctag: var(--hljs-comment);
  /* --> String */
  --hljs-string: var(--color-4);
  --hljs-string-subst: var(--color-5);
  --hljs-string-template-variable: var(--color-2);
  /* --> Tag */
  --hljs-tag: var(--color-7);
  --hljs-tag-name: var(--color-10);
  --hljs-tag-attr: var(--color-5);
  /* --> Function */
  --hljs-function: var(--text-default);
  --hljs-function-keyword: var(--hljs-keyword);
  --hljs-function-title: var(--hljs-title);
  --hljs-function-params: var(--hljs-params);
  --hljs-function-literal: var(--hljs-literal);
  --hljs-function-operator: var(--hljs-operator);
  /* --> Class */
  --hljs-class: var(--text-default);
  --hljs-class-keyword: var(--color-6);
  --hljs-class-title: var(--color-7);
}

#app-mount .hljs {
  font-family: "JetBrainsMono Nerd Font", "JetBrains Mono", var(--font-code),
    monospace;
  background: var(--background-secondary);
  color: var(--text-normal);
  padding: 15px 20px;
  border-radius: 5px;
}

#app-mount .codeLine-3a3dbd {
  color: var(--text-default);
}

#app-mount .hljs-comment {
  color: var(--hljs-comment);
}

#app-mount .hljs-attribute {
  color: var(--hljs-attribute);
}

#app-mount .hljs-nomarkup {
  color: var(--hljs-nomarkup);
}

#app-mount .hljs-variable {
  color: var(--hljs-variable);
}

#app-mount .hljs-meta {
  color: var(--hljs-meta);
}

#app-mount .hljs-meta-string {
  color: var(--hljs-meta-string);
}

#app-mount .hljs-meta-keyword {
  color: var(--hljs-meta-keyword);
}

#app-mount .hljs-literal {
  color: var(--hljs-literal);
}

#app-mount .hljs-string {
  color: var(--hljs-string);
}

#app-mount .hljs-section {
  color: var(--hljs-section);
}

#app-mount .hljs-number {
  color: var(--hljs-number);
}

#app-mount .hljs-tag {
  color: var(--hljs-tag);
}

#app-mount .hljs-name {
  color: var(--hljs-name);
}

#app-mount .hljs-selector-tag {
  color: var(--hljs-selector-tag);
}

#app-mount .hljs-selector-class {
  color: var(--hljs-selector-class);
}

#app-mount .hljs-selector-attr {
  color: var(--hljs-selector-attr);
}

#app-mount .hljs-selector-pseudo {
  color: var(--hljs-selector-pseudo);
}

#app-mount :not(.hljs-function) > .hljs-keyword {
  color: var(--color10);
  font-style: italic;
}

#app-mount .hljs-function {
  color: var(--hljs-function);
}

#app-mount .hljs-built_in {
  color: var(--hljsbuilt_in);
}

#app-mount .hljs-title {
  color: var(--hljs-title);
}

#app-mount .hljs-link {
  color: var(--hljs-link);
}

#app-mount .hljs-bullet {
  color: var(--hljs-bullet);
}

#app-mount .hljs-symbol {
  color: var(--hljs-symbol);
}

#app-mount .hljs-addition {
  color: var(--hljs-addition);
}

#app-mount .hljs-deletion {
  color: var(--hljs-deletion);
}

#app-mount .hljs-attr {
  color: var(--hljs-attr);
}

#app-mount .hljs-punctuation {
  color: var(--hljs-punctuation);
}

#app-mount .hljs-regexp {
  color: var(--hljs-regexp);
}

#app-mount .hljs-type {
  color: var(--hljs-type);
}

#app-mount .hljs-selector-id {
  color: var(--hljs-selector-id);
}

#app-mount .hljs-params {
  color: var(--hljs-params);
}

#app-mount .hljs-operator {
  color: var(--hljs-operator);
}

#app-mount .hljs-rest_arg {
  color: var(--hljs-rest_arg);
}

#app-mount .hljs-template-variable {
  color: var(--hljs-template-variable);
}

#app-mount .hljs-comment .hljs-doctag {
  color: var(--hljs-comment-doctag);
}

#app-mount .hljs-params .hljs-attr {
  color: var(--hljs-params-attr);
}

#app-mount .hljs-string .hljs-subst {
  color: var(--hljs-string-subst);
}

#app-mount .hljs-string .hljs-template-variable {
  color: var(--hljs-string-template-variable);
}

#app-mount .hljs-tag .hljs-name {
  color: var(--hljs-tag-name);
}

#app-mount .hljs-tag .hljs-attr {
  color: var(--hljs-tag-attr);
}

#app-mount .hljs-function .hljs-keyword {
  color: var(--hljs-function-keyword);
}

#app-mount .hljs-function .hljs-title {
  color: var(--hljs-function-title);
}

#app-mount .hljs-function .hljs-literal {
  color: var(--hljs-function-literal);
}

#app-mount .hljs-function .hljs-params {
  color: var(--hljs-function-params);
}

#app-mount .hljs-function .hljs-operator {
  color: var(--hljs-function-operator);
}

#app-mount .hljs-class .hljs-keyword {
  color: var(--hljs-class-keyword);
}

#app-mount .hljs-class .hljs-title {
  color: var(--hljs-class-title);
}

/* Haskell Specific Syntax */
#app-mount .hs .hljs-type {
  color: var(--color-7);
}

/* Lua Specific Syntax */
#app-mount .lua .hljs-built_in {
  color: var(--color-7);
}

/* Clang Specific Syntax */
#app-mount .c .hljs-keyword {
  color: var(--color-7);
}
#app-mount .c .hljs-built_in {
  color: var(--color-9);
}
#app-mount .c > .hljs-keyword {
  color: var(--color-10);
}

/* CSS Specific Syntax */
#app-mount .css .hljs-built_in {
  color: var(--color-5);
}

/* Rust Specific Syntax */
#app-mount .rust .hljs-built_in {
  color: var(--color-7);
}

/* PHP Specific Syntax */
#app-mount .php .hljs-variable {
  color: var(--color-10);
}
]],
    colors
  )

  return fish
end

return M
