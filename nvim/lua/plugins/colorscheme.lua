return {
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    -- opts = {
    --   background = "dark",
    -- },
    -- config = function(_, opts)
    --   -- Apply the background option
    --   vim.g.everforest_background = opts.background
    -- end,
    config = function()
      vim.g.everforest_background = "hard"
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
