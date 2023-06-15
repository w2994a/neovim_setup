vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>l", ":set list!<CR>")

-- Remap <CTRL>s for save file.
vim.keymap.set("i", "<C-s>", "<C-o>:w<CR>")
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("v", "<C-s>", "<C-c>:w<CR>")

-- Remap <CTRL>c for copy in visual mode.
vim.keymap.set("v", "<C-c>", '"+y')

