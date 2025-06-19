-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- move to window using <ctrl> arrow keys
map("n", "<C-Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-Down>", "<C-w>j", { desc = "Go to Left Window", remap = true })
map("n", "<C-Up>", "<C-w>k", { desc = "Go to Left Window", remap = true })
map("n", "<C-Right>", "<C-w>l", { desc = "Go to Left Window", remap = true })

-- resize window using <ctrl + alt> arrow keys
map("n", "<C-A-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
