return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    -- Add Python formatters
    opts.formatters_by_ft.python = { "isort", "black" }

    -- (optional) extra args, e.g. line length
    -- opts.formatters.black = {
    --   prepend_args = { "--line-length", "88" },
    -- }

    -- Add CSS and SCSS formatters
    -- Running stylelint first sorts the properties, then prettier cleans up the syntax
    opts.formatters_by_ft.css = { "stylelint", "prettier" }
    opts.formatters_by_ft.scss = { "stylelint", "prettier" }

    return opts
  end,
}
