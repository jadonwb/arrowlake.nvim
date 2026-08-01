# Fixes

1. allow user defined themes, or custom changes to output any or all extras they so choose to any path they so choose:

(my syntax might be a bit wrong)

```lua
local M = {}

--@param extras? table<string[]> if nil do all extras? or make required?
--@param paths? table<string[]> if not supplied, either fails or there will be default path? otherwise is a list, make
M.generate_extras = function(...
```

can be in an autocmd, such that when they update their theme plugin file, it can watch that path, reload the theme, generate extras at the paths they so choose (to auto update other applications that are configured)

allows for auto-theming external things, can define other autocmds based on events

2. allow nice auto-reload api, can send notifications if it detects a change, can do the reload itself, etc.
   - pretty sure already partially works with the transparency toggle I added?

3. allow the internal Utils functionality to be accessible to the user in their configuration (if it isn't already), so they can blend colors if they need/want to, can lighten and darken with the internal hsluv library functionality, and can even invert their whole color theme with the invert feature, my idea is that they define either a dark or a light theme (or both)

4. allow user to define any number of tables of color themes, and they can pass that to an arrowlake function and reload with that theme, or specify a directory of .lua files that return the table of the tweaks they want made with that theme.

5. in each of the two main tables, color, and schema, the user can set option to completely disable everything it sets and redefine the whole thing, or they can just pick and choose individual things in each
