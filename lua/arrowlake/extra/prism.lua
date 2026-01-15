local util = require("arrowlake.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  return util.template(M.template, colors)
end

M.template = [[
module.exports =  {
  plain: {
    color: "${fg}",
    backgroundColor: "${bg}",
  },
  styles: [
    {
      types: ["prolog", "builtin"],
      style: {
        color: "${red}",
      },
    },
    {
      types: ["function"],
      style: {
        color: "${function}",
      },
    },
    {
      types: ["symbol"],
      style: {
        color: "${secondary}",
      },
    },
    {
      types: ["punctuation"],
      style: {
        color: "${punctuation}",
      },
    },
    {
      types: ["string", "char", "tag", "selector"],
      style: {
        color: "${string}",
      },
    },
    {
      types: ["keyword"],
      style: {
        color: "${keyword}",
      },
    },
    {
      types: ["operator"],
      style: {
        color: "${operator}",
      },
    },
    {
      types: ["constant", "boolean"],
      style: {
        color: "${constant}",
      },
    },
    {
      types: ["variable"],
      style: {
        color: "${fg}",
      },
    },
    {
      types: ["comment"],
      style: {
        color: "${comment}",
        fontStyle: "italic",
      },
    },
    {
      types: ["attr-name"],
      style: {
        color: "rgb(241, 250, 140)",
      },
    },
  ],
};
]]

return M
