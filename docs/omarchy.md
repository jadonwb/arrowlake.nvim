# Omarchy integration

The Arrowlake palette lives in `lua/arrowlake/colors/`. Everything that other
apps consume is generated from it.

## Generate and install

```sh
./scripts/build          # write extras/ and omarchy/ in this repo
./scripts/sync           # copy generated files to ~/.config and chezmoi add
./scripts/sync --check   # report drift without writing
./scripts/sync --apply   # re-apply the current Omarchy theme afterwards
```

`scripts/sync` copies only generated files. Backgrounds, `unlock.png`,
`chromium.theme`, `icons.theme`, and `hyprlock.conf` stay hand-managed.

If the theme directory still has `btop.theme`, `tmux.theme`, or `light.mode`,
delete them. A theme-shipped file wins over an Omarchy template, so those files
would keep the old output and hide the generated one.

## What Omarchy generates

The theme ships `colors.toml` plus `neovim.lua`. Omarchy's template engine
renders the rest from `colors.toml`:

- terminals: Alacritty, foot, Ghostty, Kitty
- btop, tmux environment, Chromium, Hyprland, the shell, gum
- Neovim, only when the theme does not ship `neovim.lua`

`colors.toml` uses the semantic schema (`background`, `dark_background`,
`foreground`, `accent`, `selection`, `muted`, `bright_*`, ...). Omarchy derives
`color0..15`, the cursor, and missing shades. Do not add legacy ANSI keys.

## What stays in this repository

| Output | Why |
| --- | --- |
| `omarchy/themes/*/colors.toml` | Palette source for every Omarchy consumer |
| `omarchy/themes/*/neovim.lua` | Selects `arrowlake-dark` or `arrowlake-light` |
| `omarchy/themes/*/wezterm.json` | `wezterm.lua` reads this file directly |
| `omarchy/themes/*/codex.txt` | Codex desktop import string (manual paste) |
| `omarchy/themed/btop.theme.tpl` | Custom btop layout, rendered by Omarchy |
| `omarchy/themed/tmux.theme.tpl` | `@primary` / `@selection_bg` for tmux |
| `extras/opencode/` | OpenCode TUI theme (computed OKLCH scales) |
| `extras/sublime/` | tmTheme used by Sublime and Silicon |
| `extras/yazi/` | Yazi flavor directory (two files) |

`btop` and `tmux` are user templates in `~/.config/omarchy/themed/`. They apply
to every Omarchy theme, not only Arrowlake. WezTerm stays a per-theme generated
file because its light theme uses a magenta search tint that the template
language cannot switch on per mode. `~/.config/wezterm/wezterm.lua` reads
`current/theme/wezterm.json`; the old `~/.config/wezterm/colors/arrowlake_light.toml`
is no longer needed. Codex stays a per-theme file because its contrast value
differs between dark and light.

## Neovim theme switching

`~/.config/nvim/lua/plugins/theme.lua` is a symlink to the current theme's
`neovim.lua`. Omarchy does not reload a running Neovim, so `arrowlake/omarchy.lua`
watches `~/.local/state/omarchy/current` and applies the colorscheme named by
the new `neovim.lua`. This is intentionally small: one directory watcher, a
debounce, and a `LazyVim` colorscheme lookup.

## Cache

Highlight caching is on by default. The cache key includes the plugin version,
the resolved palette, the group list, transparency, and a fingerprint of every
`.lua` file under `lua/arrowlake/`. Editing a group or palette invalidates the
cache, which fixes the stale-highlights problem during development. Set
`opts = { cache = false }` to disable it while testing.
