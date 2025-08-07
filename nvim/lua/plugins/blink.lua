return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "select_and_accept" }, -- uses tab as auto complete
      ["<Cr>"] = {}, -- disables return to auto complete
    },
  },
}
