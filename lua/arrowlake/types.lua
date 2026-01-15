---@class arrowlake.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias arrowlake.Highlights table<string,arrowlake.Highlight|string>

---@alias arrowlake.HighlightsFn fun(colors: ColorScheme, opts:arrowlake.Config):arrowlake.Highlights

---@class arrowlake.Cache
---@field groups arrowlake.Highlights
---@field inputs table
