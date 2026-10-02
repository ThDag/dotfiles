-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Select all
-- keymap.set("n", "<C-a>", "gg<S-v>G")

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Save file faster
keymap.set("n", "<leader>r", "<cmd>w<cr>", { desc = "Save file" })

-- Move selected lines down with J
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Move selected lines up with K
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- window size adjustment
keymap.set("n", "<C-w>,", "<C-w><")
keymap.set("n", "<C-w>.", "<C-w>>")

-- run c files quickly
vim.api.nvim_create_user_command("Runc", function()
  vim.cmd("write")
  vim.cmd("split | terminal gcc % -o /tmp/a.out && /tmp/a.out")
  vim.cmd("startinsert")
end, { desc = "Compile and run C file" })
