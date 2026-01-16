-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Define the path to your Vimrc
local vim_config_path = vim.fn.expand("~/.config/vim/vimrc")
local vim_config_exists = vim.fn.filereadable(vim_config_path) == 1

-- Load existing Vim configuration if it exists
if vim_config_exists and vim.g.load_vimrc ~= false then
  vim.cmd("source " .. vim_config_path)
  print("Loaded existing .vimrc for compatibility")
end

-- TODO: 2026-01-16: these should be fixed soon by fix/keymap-multikey in blink.cmp
vim.keymap.set("i", "<C-m>", "<BS>") --not effective
vim.keymap.set("i", "<CR>", "<CR>")
vim.keymap.set("i", "<C-i>", "<Right>") --not effective
vim.keymap.set("i", "<Tab>", "<Tab>")

-- vim.keymap.set("i", "<C-i>", " C-i")
-- vim.keymap.set("i", "<Tab>", " Tab")
-- vim.keymap.set("i", "<C-m>", " C-m")
-- vim.keymap.set("i", "<CR>", " CR")
-- vim.keymap.set("n", "<C-i>", "<CMD>lua print([[ Ctr-i is pressed ]])<CR>")
-- vim.keymap.set("n", "<Tab>", "<CMD>lua print([[ Tab is pressed ]])<CR>")
-- vim.keymap.set("n", "<C-m>", "<CMD>lua print([[ C-m is pressed ]])<CR>")
-- vim.keymap.set("n", "<CR>", "<CMD>lua print([[ CR is pressed ]])<CR>")
