# Arrowlake for Codex / ChatGPT Desktop

`scripts/build` writes `omarchy/themes/arrowlake/codex.txt` and
`omarchy/themes/arrowlake_light/codex.txt`. Each file contains a single
`codex-theme-v1:` share string accepted by the desktop app's theme importer.

1. Open the file matching the desired appearance and copy its complete contents.
2. In the desktop app, open **Settings → Appearance** (or Appearance under General).
3. Use **Import theme** for the matching **Dark theme** or **Light theme** section.
4. Paste the share string and import it. The variant must match the section.

The files are share strings, not standalone JSON documents. If the app exposes a
file picker, use the corresponding `.txt` file; the version inspected here
exposes a text input for the share string.

## Palette mapping

| Desktop field | Arrowlake field |
| --- | --- |
| Accent | `primary` |
| Foreground (`ink`) | `foregrounds.normal` |
| Background (`surface`) | `backgrounds.normal` |
| Added diff color | `git.add` |
| Removed diff color | `git.delete` |
| Skill color | `secondary` |

The accent source is `custom`, so an account accent does not replace Arrowlake's
accent. Windows are opaque to keep the background color consistent. Fonts use the
app defaults; contrast uses 60 for dark and 45 for light.

## Format

The v1 importer requires a registered built-in `codeThemeId`. These themes use
`codex`, which supports both modes. The importer does not accept custom syntax
token colors, so Arrowlake's Neovim syntax colors cannot be included in this
format. You can choose another built-in code theme after importing.

The envelope contains exactly `codeThemeId`, `theme`, and `variant`. `theme`
contains the accent, optional accent source, integer contrast (0–100), font
settings, ink, opaque-window flag, semantic colors, and surface. All colors are
six-digit `#RRGGBB` strings. This format was checked against the installed
ChatGPT Desktop app's v1 share-string parser and settings schema on 2026-10-13;
it is not a published standalone theme-file specification.
