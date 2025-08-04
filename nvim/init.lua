-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
local keymap = vim.keymap

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Move selected lines down with J
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Move selected lines up with K
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
