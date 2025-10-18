return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        enabled = true,
        files = {
          include = {}, -- Include all files, ignoring .gitignore
        },
      },
      picker = {
        enabled = true,
        sources = {
          files = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
  {},
}
