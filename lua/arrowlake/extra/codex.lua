local M = {}

-- ChatGPT Desktop's theme importer accepts a versioned share string, not a
-- standalone JSON theme or TextMate theme. codeThemeId must be a built-in ID.
-- Verified against the desktop app's v1 parser and chrome theme schema.
---@param colors ColorScheme
---@return string
function M.generate(colors)
  local style = colors._style
  assert(style == "dark" or style == "light", "Codex theme requires a dark or light style")

  -- Keep a fixed field order for reproducible generated files. Encode each
  -- palette value with the JSON encoder so overrides remain correctly escaped.
  local function json(value)
    return vim.json.encode(value)
  end

  return 'codex-theme-v1:{"codeThemeId":"codex","theme":{'
    .. '"accent":' .. json(colors.primary)
    .. ',"accentSource":"custom"'
    .. ',"contrast":' .. (style == "dark" and "60" or "45")
    .. ',"fonts":{"code":null,"ui":null}'
    .. ',"ink":' .. json(colors.foregrounds.normal)
    .. ',"opaqueWindows":true'
    .. ',"semanticColors":{"diffAdded":' .. json(colors.git.add)
    .. ',"diffRemoved":' .. json(colors.git.delete)
    .. ',"skill":' .. json(colors.secondary) .. '}'
    .. ',"surface":' .. json(colors.backgrounds.normal)
    .. '},"variant":' .. json(style) .. '}\n'
end

return M
