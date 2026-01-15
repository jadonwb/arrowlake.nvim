local M = {}

local REQUIRED = "__ARROWLAKE_REQUIRED__"

M.REQUIRED = REQUIRED

M.template = {
  bg = REQUIRED,
  bg_dark = REQUIRED,
  bg_darker = REQUIRED,
  bg_code = REQUIRED,
  bg_notification = REQUIRED,
  bg_highlight = REQUIRED,
  bg_visual = REQUIRED,
  bg_hover = REQUIRED,
  bg_search = REQUIRED,
  bg_search_current = REQUIRED,
  bg_active_parameter = REQUIRED,
  bg_sidebar = REQUIRED,
  bg_float = REQUIRED,
  fg = REQUIRED,
  fg_dark = REQUIRED,
  fg_darker = REQUIRED,
  fg_gutter = REQUIRED,
  fg_sidebar = REQUIRED,
  comment = REQUIRED,
  muted = REQUIRED,
  black = REQUIRED,
  terminal_black = REQUIRED,
  border = REQUIRED,
  border_color = REQUIRED,
  border_subtle = REQUIRED,
  primary = REQUIRED,
  secondary = REQUIRED,
  selection = REQUIRED,
  red = REQUIRED,
  orange = REQUIRED,
  yellow = REQUIRED,
  green = REQUIRED,
  blue = REQUIRED,
  purple = REQUIRED,

  magenta = REQUIRED,
  cyan = REQUIRED,
  title = REQUIRED,
  keyword = REQUIRED,
  macro = REQUIRED,
  string = REQUIRED,
  string_doc = REQUIRED,
  string_escape = REQUIRED,
  md_inline = REQUIRED,
  parameter = REQUIRED,
  variable = REQUIRED,
  member = REQUIRED,
  constant = REQUIRED,
  type = REQUIRED,
  type_builtin = REQUIRED,
  functions = REQUIRED,
  constructor = REQUIRED,
  operator = REQUIRED,
  punctuation = REQUIRED,
  markup = REQUIRED,
  link = REQUIRED,
  focus = REQUIRED,
  error = REQUIRED,
  warning = REQUIRED,
  info = REQUIRED,
  hint = REQUIRED,
  success = REQUIRED,
  todo = REQUIRED,
  trace = REQUIRED,
  attention = REQUIRED,
  ai = REQUIRED,
  rainbow = { REQUIRED, REQUIRED, REQUIRED, REQUIRED, REQUIRED, REQUIRED, REQUIRED, REQUIRED },
  git = {
    add = REQUIRED,
    change = REQUIRED,
    delete = REQUIRED,
    ignore = REQUIRED,
  },
  diff = {
    add = REQUIRED,
    change = REQUIRED,
    delete = REQUIRED,
    text = REQUIRED,
  },
  terminal = {
    black = REQUIRED,
    black_bright = REQUIRED,
    red = REQUIRED,
    red_bright = REQUIRED,
    green = REQUIRED,
    green_bright = REQUIRED,
    yellow = REQUIRED,
    yellow_bright = REQUIRED,
    blue = REQUIRED,
    blue_bright = REQUIRED,
    magenta = REQUIRED,
    magenta_bright = REQUIRED,
    cyan = REQUIRED,
    cyan_bright = REQUIRED,
    white = REQUIRED,
    white_bright = REQUIRED,
  },
  status = {
    bg = REQUIRED,
    normal = REQUIRED,
    insert = REQUIRED,
    command = REQUIRED,
    visual = REQUIRED,
    replace = REQUIRED,
    terminal = REQUIRED,
  },
}

local function merge(dst, src)
  for key, value in pairs(src) do
    if type(value) == "table" and type(dst[key]) == "table" then
      merge(dst[key], value)
    else
      dst[key] = vim.deepcopy(value)
    end
  end
  return dst
end

local function collect_missing(shape, value, path, missing)
  for key, expected in pairs(shape) do
    local next_path = path and (path .. "." .. tostring(key)) or tostring(key)
    local actual = value and value[key] or nil

    if type(expected) == "table" then
      if type(actual) ~= "table" then
        table.insert(missing, next_path)
      else
        collect_missing(expected, actual, next_path, missing)
      end
    elseif actual == nil or actual == REQUIRED then
      table.insert(missing, next_path)
    end
  end
end

function M.validate(palette, name)
  local missing = {}
  collect_missing(M.template, palette, name or "palette", missing)

  if #missing > 0 then
    error("Missing palette keys:\n  - " .. table.concat(missing, "\n  - "))
  end

  return palette
end

function M.inherit(base, overrides, name)
  local palette = vim.deepcopy(base)
  merge(palette, overrides or {})
  return M.validate(palette, name)
end

function M.new(overrides, name)
  return M.inherit(M.template, overrides, name)
end

return M
