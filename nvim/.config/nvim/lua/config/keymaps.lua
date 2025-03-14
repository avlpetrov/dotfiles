-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- dial.nvim
vim.keymap.set("n", "<C-i>", function()
  require("dial.map").manipulate("increment", "normal")
end)
vim.keymap.set("n", "g<C-i>", function()
  require("dial.map").manipulate("increment", "gnormal")
end)
vim.keymap.set("v", "<C-i>", function()
  require("dial.map").manipulate("increment", "visual")
end)
vim.keymap.set("v", "g<C-i>", function()
  require("dial.map").manipulate("increment", "gvisual")
end)
--
