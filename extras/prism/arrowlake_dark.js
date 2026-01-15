module.exports =  {
  plain: {
    color: "#bec8e8",
    backgroundColor: "#0D0C25",
  },
  styles: [
    {
      types: ["prolog", "builtin"],
      style: {
        color: "#E50050",
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
        color: "#5352CD",
      },
    },
    {
      types: ["punctuation"],
      style: {
        color: "#7e85b8",
      },
    },
    {
      types: ["string", "char", "tag", "selector"],
      style: {
        color: "#2A8A6B",
      },
    },
    {
      types: ["keyword"],
      style: {
        color: "#D91C87",
      },
    },
    {
      types: ["operator"],
      style: {
        color: "#9AC1E5",
      },
    },
    {
      types: ["constant", "boolean"],
      style: {
        color: "#FB9B00",
      },
    },
    {
      types: ["variable"],
      style: {
        color: "#bec8e8",
      },
    },
    {
      types: ["comment"],
      style: {
        color: "#5c6296",
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
