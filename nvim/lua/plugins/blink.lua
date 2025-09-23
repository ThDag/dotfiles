return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "accept", "fallback" }, -- confirm if completion is visible, otherwise indent
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<Cr>"] = {}, -- disables return to auto complete
    },
  },
}
