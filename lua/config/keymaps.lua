-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- move to window using <ctrl> arrow keys
map("n", "<C-Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-Up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- move to window using <leader>w arrow keys
map("n", "<leader>w<Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<leader>w<Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<leader>w<Up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<leader>w<Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- resize window using <ctrl + alt> arrow keys
map("n", "<C-A-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- navigate buffers with <shift> left/right
map("n", "<S-Left>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-Right>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- move lines with <alt> up/down
map("n", "<A-Down>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-Up>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-Down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-Up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
