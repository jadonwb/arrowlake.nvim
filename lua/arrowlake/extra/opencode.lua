-- OpenCode V2 theme generation (Arrowlake).
--
-- The emitted mode document is derived entirely from the active ColorScheme:
-- semantic leaves resolve to Arrowlake palette/mapping fields, diff surfaces
-- use `arrowlake.util` blends, and the hue/neutral ramps are computed
-- perceptually (OKLCH, the same perceptual space OpenCode's v1 -> v2 theme
-- migration uses) from colorscheme anchors. No captured/static hex blocks.
local M = {}

local STEPS = { 100, 200, 300, 400, 500, 600, 700, 800, 900 }
local CORE_HUES = { "red", "orange", "yellow", "green", "cyan", "blue", "purple" }

-- ── perceptual color math (sRGB <-> OKLCH) ────────────────────────────────

local function clamp(value, min, max)
  return math.max(min, math.min(max, value))
end

local function srgb_to_linear(value)
  if value <= 0.04045 then
    return value / 12.92
  end
  return ((value + 0.055) / 1.055) ^ 2.4
end

local function linear_to_srgb(value)
  if value <= 0.0031308 then
    return value * 12.92
  end
  return 1.055 * (value ^ (1 / 2.4)) - 0.055
end

local function rgb_to_oklch(hex)
  local r = srgb_to_linear(tonumber(hex:sub(2, 3), 16) / 255)
  local g = srgb_to_linear(tonumber(hex:sub(4, 5), 16) / 255)
  local b = srgb_to_linear(tonumber(hex:sub(6, 7), 16) / 255)

  local l_root = (0.4122214708 * r + 0.5363325363 * g + 0.0514459929 * b) ^ (1 / 3)
  local m_root = (0.2119034982 * r + 0.6806995451 * g + 0.1073969566 * b) ^ (1 / 3)
  local s_root = (0.0883024619 * r + 0.2817188376 * g + 0.6299787005 * b) ^ (1 / 3)

  local l = 0.2104542553 * l_root + 0.793617785 * m_root - 0.0040720468 * s_root
  local a = 1.9779984951 * l_root - 2.428592205 * m_root + 0.4505937099 * s_root
  local b2 = 0.0259040371 * l_root + 0.7827717662 * m_root - 0.808675766 * s_root

  local chroma = math.sqrt(a * a + b2 * b2)
  local hue = math.deg(math.atan2(b2, a))
  if hue < 0 then
    hue = hue + 360
  end

  return { l = l, c = chroma, h = hue }
end

local function oklch_to_rgb(color)
  local a = color.c * math.cos(math.rad(color.h))
  local b = color.c * math.sin(math.rad(color.h))

  local l_root = color.l + 0.3963377774 * a + 0.2158037573 * b
  local m_root = color.l - 0.1055613458 * a - 0.0638541728 * b
  local s_root = color.l - 0.0894841775 * a - 1.291485548 * b

  local l = l_root * l_root * l_root
  local m = m_root * m_root * m_root
  local s = s_root * s_root * s_root

  return {
    r = linear_to_srgb(4.0767416621 * l - 3.3077115913 * m + 0.2309699292 * s),
    g = linear_to_srgb(-1.2684380046 * l + 2.6097574011 * m - 0.3413193965 * s),
    b = linear_to_srgb(-0.0041960863 * l - 0.7034186147 * m + 1.707614701 * s),
  }
end

local function in_gamut(rgb)
  return rgb.r >= 0 and rgb.r <= 1 and rgb.g >= 0 and rgb.g <= 1 and rgb.b >= 0 and rgb.b <= 1
end

local function fit_oklch(color)
  local base = {
    l = clamp(color.l, 0, 1),
    c = math.max(0, color.c),
    h = ((color.h % 360) + 360) % 360,
  }
  if in_gamut(oklch_to_rgb(base)) then
    return base
  end
  for index = 1, 24 do
    local candidate = { l = base.l, c = base.c * (0.9 ^ index), h = base.h }
    if in_gamut(oklch_to_rgb(candidate)) then
      return candidate
    end
  end
  return { l = base.l, c = 0, h = base.h }
end

local function oklch_to_hex(color)
  local rgb = oklch_to_rgb(fit_oklch(color))
  local function byte(value)
    return string.format("%02x", math.floor(clamp(value, 0, 1) * 255 + 0.5))
  end
  return "#" .. byte(rgb.r) .. byte(rgb.g) .. byte(rgb.b)
end

local function hex(value)
  return string.lower(value)
end

-- ── ramps ─────────────────────────────────────────────────────────────────

local function interpolate(first, second, amount)
  local start = rgb_to_oklch(first)
  local finish = rgb_to_oklch(second)
  local delta = ((((finish.h - start.h) % 360) + 540) % 360) - 180
  return oklch_to_hex({
    l = start.l + (finish.l - start.l) * amount,
    c = start.c + (finish.c - start.c) * amount,
    h = start.h + delta * amount,
  })
end

--- 9-step chromatic hue scale anchored on the palette color itself.
local function hue_scale(color, dark)
  local value = rgb_to_oklch(color)
  local anchor = dark and 200 or 800
  local endpoint = dark and math.min(0.18, value.l) or math.max(0.97, value.l)

  local entries = {}
  for _, step in ipairs(STEPS) do
    if step == anchor then
      entries[#entries + 1] = { tostring(step), hex(color) }
    else
      local progress = dark and (step - anchor) / (900 - anchor) or (anchor - step) / (anchor - 100)
      entries[#entries + 1] = {
        tostring(step),
        oklch_to_hex({
          l = value.l + (endpoint - value.l) * progress,
          c = value.c * (1 - progress * 0.5),
          h = value.h,
        }),
      }
    end
  end
  return entries
end

--- 9-step neutral scale interpolated between palette-derived anchors.
local function neutral_scale(anchors)
  local entries = {}
  for _, step in ipairs(STEPS) do
    local exact
    for _, anchor in ipairs(anchors) do
      if anchor.step == step then
        exact = anchor.color
        break
      end
    end

    if exact then
      entries[#entries + 1] = { tostring(step), hex(exact) }
    else
      local lower, upper
      if step < anchors[1].step then
        lower, upper = anchors[1], anchors[2]
      elseif step > anchors[#anchors].step then
        lower, upper = anchors[#anchors - 1], anchors[#anchors]
      else
        for _, anchor in ipairs(anchors) do
          if anchor.step < step then
            lower = anchor
          end
        end
        for _, anchor in ipairs(anchors) do
          if anchor.step > step then
            upper = anchor
            break
          end
        end
      end
      entries[#entries + 1] = {
        tostring(step),
        interpolate(lower.color, upper.color, (step - lower.step) / (upper.step - lower.step)),
      }
    end
  end
  return entries
end

-- ── semantic hue families ─────────────────────────────────────────────────

local function hue_name_of(colors, color)
  for _, name in ipairs(CORE_HUES) do
    if hex(colors[name]) == hex(color) then
      return name
    end
  end
end

local function nearest_hue(colors, color, exclude)
  local target = rgb_to_oklch(color)
  local best_name, best_distance
  for _, name in ipairs(CORE_HUES) do
    if name ~= exclude then
      local candidate = rgb_to_oklch(colors[name])
      local distance = math.abs(target.h - candidate.h)
      distance = math.min(distance, 360 - distance)
      if not best_distance or distance < best_distance then
        best_distance = distance
        best_name = name
      end
    end
  end
  return best_name
end

-- ── ordered JSON emitter (deterministic output) ───────────────────────────

local function array(items)
  items.__array = true
  return items
end

local function encode(value, indent)
  if type(value) == "string" then
    return '"' .. value .. '"'
  elseif type(value) == "number" then
    return tostring(value)
  end

  local pad = string.rep(" ", indent)
  local parts = {}
  if value.__array then
    for _, item in ipairs(value) do
      parts[#parts + 1] = string.rep(" ", indent + 2) .. encode(item, indent + 2)
    end
    return "[\n" .. table.concat(parts, ",\n") .. "\n" .. pad .. "]"
  end
  for _, entry in ipairs(value) do
    parts[#parts + 1] = string.rep(" ", indent + 2) .. '"' .. entry[1] .. '": ' .. encode(entry[2], indent + 2)
  end
  return "{\n" .. table.concat(parts, ",\n") .. "\n" .. pad .. "}"
end

-- ── document builder ──────────────────────────────────────────────────────

--- @param colors ColorScheme
local function build_mode(colors)
  local U = require("arrowlake.util")
  local dark = colors._style ~= "light"

  local panel = dark and colors.backgrounds.dark or colors.backgrounds.float
  local interactive_step = dark and 200 or 800
  local interactive_ref = "$hue.interactive." .. interactive_step
  local neutral_text = dark and 200 or 800
  local neutral_bg = dark and 800 or 200
  local neutral_muted = dark and 400 or 600
  local neutral_focus = dark and 800 or 200
  local feedback_step = dark and 200 or 800
  local raised = {
    { "base", hex(panel) },
    { "high", hex(colors.primary) },
    { "max", hex(colors.backgrounds.popup) },
  }

  local accent_hue = hue_name_of(colors, colors.focus)
  local primary_hue = hue_name_of(colors, colors.primary)
  local secondary_hue = hue_name_of(colors, colors.secondary)
    or nearest_hue(colors, colors.secondary, primary_hue)

  local anchors
  if dark then
    anchors = {
      { step = 200, color = colors.fg },
      { step = 400, color = colors.fg_dark },
      { step = 600, color = colors.backgrounds.dark },
      { step = 700, color = colors.backgrounds.dark },
      { step = 800, color = colors.bg },
    }
  else
    anchors = {
      { step = 200, color = colors.bg },
      { step = 300, color = colors.backgrounds.float },
      { step = 400, color = colors.backgrounds.float },
      { step = 600, color = colors.fg_gutter },
      { step = 800, color = colors.fg },
    }
  end

  local hue = {
    { "gray", neutral_scale(anchors) },
    { "red", hue_scale(colors.red, dark) },
    { "orange", dark and hue_scale(colors.orange, dark) or "$hue.gray" },
    { "yellow", hue_scale(colors.yellow, dark) },
    { "green", hue_scale(colors.green, dark) },
    { "cyan", dark and "$hue.gray" or hue_scale(colors.cyan, dark) },
    { "blue", hue_scale(colors.blue, dark) },
    { "purple", hue_scale(colors.purple, dark) },
    { "accent", "$hue." .. accent_hue },
    { "interactive", "$hue." .. primary_hue },
    { "neutral", "$hue.gray" },
  }

  local context_raised = {
    { "base", hex(panel) },
    { "high", hex(colors.primary) },
    { "max", hex(colors.backgrounds.popup) },
  }

  return {
    { "hue", hue },
    { "categorical", array({ secondary_hue, accent_hue, "green", "yellow", primary_hue, "red" }) },
    {
      "text",
      {
        { "default", "$hue.neutral." .. neutral_text },
        { "subdued", "$hue.neutral." .. neutral_muted },
        {
          "action",
          {
            {
              "primary",
              {
                { "default", "$text.default" },
                { "$disabled", "$hue.neutral." .. neutral_muted },
                { "$focused", "$hue.neutral." .. neutral_focus },
                { "$selected", interactive_ref },
              },
            },
            { "secondary", { { "default", "$text.subdued" }, { "$hovered", "$text.default" } } },
            { "destructive", { { "default", "$hue.neutral." .. neutral_focus }, { "$disabled", "$hue.neutral." .. neutral_muted } } },
          },
        },
        {
          "formfield",
          {
            { "default", "$hue.neutral." .. neutral_text },
            { "$hovered", interactive_ref },
            { "$focused", interactive_ref },
            { "$pressed", interactive_ref },
            { "$disabled", "$hue.neutral." .. neutral_muted },
            { "$selected", interactive_ref },
          },
        },
        {
          "feedback",
          {
            { "error", { { "default", "$hue.red." .. feedback_step } } },
            { "warning", { { "default", "$hue.yellow." .. feedback_step } } },
            { "success", { { "default", "$hue.green." .. feedback_step } } },
            { "info", { { "default", dark and hex(colors.secondary) or ("$hue.blue." .. feedback_step) } } },
          },
        },
      },
    },
    {
      "background",
      {
        { "default", "$hue.neutral." .. neutral_bg },
        { "raised", raised },
        {
          "action",
          {
            {
              "primary",
              {
                { "default", "transparent" },
                { "$hovered", "$hue.neutral." .. (dark and 700 or 300) },
                { "$focused", interactive_ref },
                { "$selected", "transparent" },
              },
            },
            { "secondary", { { "default", "transparent" } } },
            { "destructive", { { "default", "$hue.red." .. feedback_step } } },
          },
        },
        { "formfield", { { "default", "$background.default" } } },
        {
          "feedback",
          {
            { "error", { { "default", "$background.default" } } },
            { "warning", { { "default", "$background.default" } } },
            { "success", { { "default", "$background.default" } } },
            { "info", { { "default", "$background.default" } } },
          },
        },
      },
    },
    { "border", { { "default", dark and hex(colors.bg_darker) or interactive_ref } } },
    { "scrollbar", { { "default", dark and interactive_ref or "$hue.accent.800" } } },
    {
      "diff",
      {
        {
          "text",
          {
            { "added", "$hue.green." .. feedback_step },
            { "removed", "$hue.red." .. feedback_step },
            { "context", dark and ("$hue.neutral." .. neutral_muted) or hex(colors.fg_dark) },
            { "hunkHeader", hex(colors.fg_darker) },
          },
        },
        {
          "background",
          {
            { "added", hex(U.blend_bg(colors.green, dark and 0.22 or 0.15, colors.bg)) },
            { "removed", hex(U.blend_bg(colors.red, dark and 0.25 or 0.15, colors.bg)) },
            { "context", dark and hex(U.blend_bg(colors.yellow, 0.22, colors.bg)) or hex(colors.bg_dark) },
          },
        },
        {
          "highlight",
          {
            { "added", "$hue.green." .. feedback_step },
            { "removed", "$hue.red." .. feedback_step },
          },
        },
        {
          "lineNumber",
          {
            { "text", hex(colors.fg_gutter) },
            {
              "background",
              {
                { "added", hex(U.blend_bg(colors.green, dark and 0.22 or 0.15, colors.bg)) },
                { "removed", hex(U.blend_bg(colors.red, dark and 0.25 or 0.15, colors.bg)) },
              },
            },
          },
        },
      },
    },
    {
      "syntax",
      {
        { "comment", hex(colors.fg_darker) },
        { "keyword", hex(colors.magenta) },
        { "function", interactive_ref },
        { "variable", "$hue.neutral." .. neutral_text },
        { "string", "$hue.green." .. feedback_step },
        { "number", dark and "$hue.accent.200" or "$hue.yellow.800" },
        { "type", dark and hex(colors.secondary) or "$hue.blue.800" },
        { "operator", hex(colors.special) },
        { "punctuation", dark and ("$hue.neutral." .. neutral_muted) or hex(colors.fg_dark) },
      },
    },
    {
      "markdown",
      {
        { "text", "$hue.neutral." .. neutral_text },
        { "heading", interactive_ref },
        { "link", dark and interactive_ref or hex(colors.orange) },
        { "linkText", dark and hex(colors.cyan) or hex(colors.orange) },
        { "code", dark and "$hue.yellow.200" or "$hue.green.800" },
        { "blockQuote", hex(colors.fg_darker) },
        { "emphasis", "$hue.neutral." .. neutral_text },
        { "strong", "$hue.neutral." .. neutral_text },
        { "horizontalRule", dark and hex(colors.fg_gutter) or "$hue.neutral.600" },
        { "listItem", dark and hex(colors.special) or hex(colors.orange) },
        { "listEnumeration", dark and "$hue.accent.200" or hex(colors.orange) },
        { "image", dark and interactive_ref or hex(colors.orange) },
        { "imageText", dark and hex(colors.cyan) or hex(colors.orange) },
        { "codeBlock", "$hue.neutral." .. neutral_text },
      },
    },
    {
      "@context:elevated",
      {
        {
          "background",
          {
            { "default", "$background.raised.base" },
            { "raised", context_raised },
            { "action", { { "primary", { { "$hovered", "$background.raised.high" } } } } },
          },
        },
      },
    },
    {
      "@context:overlay",
      {
        {
          "background",
          {
            { "default", "$background.raised.high" },
            { "raised", context_raised },
          },
        },
      },
    },
  }
end

--- @param colors ColorScheme
function M.generate(colors)
  local mode = encode(build_mode(colors), 2)
  return '{\n  "version": 2,\n  "standalone": true,\n  "dark": ' .. mode .. ',\n  "light": ' .. mode .. "\n}"
end

return M
