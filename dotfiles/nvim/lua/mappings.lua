local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better escape using jk in insert and terminal mode
keymap("i", "jj", "<ESC>", default_opts)
keymap("t", "jj", "<C-\\><C-n>", default_opts)

-- Pane Navigation 
keymap("n", "<leader>h", "<C-w>h", default_opts)
keymap("n", "<leader>j", "<C-w>j", default_opts)
keymap("n", "<leader>k", "<C-w>k", default_opts)
keymap("n", "<leader>l", "<C-w>l", default_opts)


keymap("n", "<leader>w", ":w<Enter>", default_opts) -- Write current buffer
keymap("n", "<leader>q", ":wq<Enter>", default_opts) -- Writer and quit current buffer
keymap("n", "<leader>t", ":split <Enter> :term <Enter>", default_opts) -- Launch a terminal in horizontal split
keymap("n", "<leader>T", ":vsplit <Enter> :term <Enter>", default_opts) -- Launch a termina lin vertical split

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
