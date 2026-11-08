# OpenCode

Arrowlake ships two OpenCode integrations:

| Client | Output | Installed to |
| --- | --- | --- |
| TUI | `extras/opencode/arrowlake_<style>.json` | `~/.config/opencode/themes/` |
| Desktop | `extras/opencode/arrowlake-theme/gui-experimental.cjs` | `~/.config/opencode/plugins/arrowlake-theme/` |

## Desktop theme

OpenCode Desktop does not read themes from a directory. A GUI plugin contributes
the theme with `ctx.add(Theme, theme)`, so `scripts/build` generates one
self-contained CommonJS plugin containing both Arrowlake variants:

```text
extras/opencode/arrowlake-theme/gui-experimental.cjs
```

The plugin has no build step. `require("@opencode/plugin/gui")` is provided by
the desktop app at runtime, and the theme JSON is embedded in the file. The
palette maps Arrowlake roles as follows:

| Desktop palette | Arrowlake |
| --- | --- |
| `neutral` | `bg` |
| `ink` | `fg` |
| `primary` | `primary` |
| `interactive` | `focus` |
| `success` | `diagnostics.success` |
| `warning` | `diagnostics.warning` |
| `error` | `diagnostics.error` |
| `info` | `diagnostics.info` |
| `diffAdd` / `diffDelete` | `git.add` / `git.delete` |

The generated `overrides` pin the syntax tokens (`syntax-keyword`,
`syntax-function`, `syntax-string`, and so on) to the Neovim palette.

`scripts/sync` installs the plugin file. The desktop app reads plugins from
`opencode.jsonc`, so list the local directory there:

```jsonc
{
  "plugins": [
    "./plugins/arrowlake-theme"
  ]
}
```

Then select **Arrowlake** in Settings › Appearance › Theme. The theme follows
the app's System / Light / Dark mode and includes both variants.

## TUI theme

The terminal client uses the existing `extras/opencode/arrowlake_<style>.json`
files in `~/.config/opencode/themes/`. Select one in `cli.json`:

```json
{
  "theme": {
    "name": "arrowlake_light",
    "mode": "system"
  }
}
```
