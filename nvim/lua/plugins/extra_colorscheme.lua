-- this is the color schemes that i am not using but like to have them loaded if i want to see them. idk

return {

  "navarasu/onedark.nvim",
  "sainnhe/gruvbox-material",
  "sainnhe/sonokai",
  config = function()
    vim.g.sonokai_style = "shusia"
  end,
}

-- return {
--   "rebelot/kanagawa.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd("colorscheme kanagawa")
--   end,
-- }
-- ui sucks ass. nothing has the right color

-- return {
--   "navarasu/onedark.nvim",
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     require("onedark").setup({
--       style = "darker",
--     })
--     -- Enable theme
--     require("onedark").load()
--   end,
-- }
-- menu borders kinda ugly
--
-- return {
--   "sainnhe/gruvbox-material",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Optionally configure and load the colorscheme
--     -- directly inside the plugin declaration.
--     vim.g.gruvbox_material_enable_italic = true
--     vim.cmd.colorscheme("gruvbox-material")
--   end,
-- }
-- very good but hard to read slightly

-- return {
--   "sainnhe/sonokai",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Optionally configure and load the colorscheme
--     -- directly inside the plugin declaration.
--     vim.g.sonokai_style = "shusia"
--     vim.g.sonokai_enable_italic = true
--     vim.cmd.colorscheme("sonokai")
--   end,
-- }
