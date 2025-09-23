return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    -- Add Python formatters
    opts.formatters_by_ft.python = { "isort", "black" }

    -- (optional) extra args, e.g. line length
    -- opts.formatters.black = {
    --   prepend_args = { "--line-length", "88" },
    -- }

    return opts
  end,
}
