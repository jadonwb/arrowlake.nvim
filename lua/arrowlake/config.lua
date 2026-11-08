local M = {}

M.version = "4.14.1" -- x-release-please-version

---@class arrowlake.Config
---@field cache? boolean Cache the generated highlights on disk
---@field transparent? boolean Use the normal background for the main window
---@field style? "dark"|"light" Load a variant directly (set by colors/arrowlake-*.lua)

M.defaults = {
  cache = true,
  transparent = false,
}

---@type arrowlake.Config
M.options = vim.deepcopy(M.defaults)

---@param options? arrowlake.Config
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? arrowlake.Config
---@return arrowlake.Config
function M.extend(opts)
  return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

return M
