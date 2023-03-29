vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Remaps for shift movement
vim.keymap.set("n", "J", "<C-d>zz")
vim.keymap.set("n", "K", "<C-u>zz")
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

-- Annoying buttons to press in normal mode
vim.keymap.set({ 'n', 'v' }, '<BS>', '<Nop>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<CR>', '<Nop>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Fixes differences between ctlc and esc
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable EX mode
vim.keymap.set("n", "Q", "<nop>")

-- Easy Command Mode
vim.keymap.set("n", ";", ":")

-- Window movement
vim.keymap.set("n", "<Up>", "<C-w>k")
vim.keymap.set("n", "<Down>", "<C-w>j")
vim.keymap.set("n", "<Left>", "<C-w>h")
vim.keymap.set("n", "<Right>", "<C-w>l")

vim.keymap.set("n", "<S-Up>", "<C-w>K")
vim.keymap.set("n", "<S-Down>", "<C-w>J")
vim.keymap.set("n", "<S-Left>", "<C-w>H")
vim.keymap.set("n", "<S-Right>", "<C-w>l")

-- Bring Search to Midscreen
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Fast Exit Inset Mode
--vim.keymap.set("i", "jk", "<Esc>")
--vim.keymap.set("i", "kj", "<Esc>")
