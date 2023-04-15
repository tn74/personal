local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }
local ts = require('telescope.builtin')

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better escape using jk in insert and terminal mode
keymap("i", "jj", "<ESC>", default_opts)
keymap("t", "jj", "<C-\\><C-n>", default_opts)

-- In-Tab Buffer Navigation
keymap("n", "<leader>h", "<C-w>h", default_opts)
keymap("n", "<leader>j", "<C-w>j", default_opts)
keymap("n", "<leader>k", "<C-w>k", default_opts)
keymap("n", "<leader>l", "<C-w>l", default_opts)

-- Tab Navigation
keymap("n", "<leader>b", ":tabnew<Enter>", default_opts) -- Launch a terminal in horizontal split
keymap("n", "<leader>1", "1gt", default_opts) -- Launch a terminal in horizontal split
keymap("n", "<leader>2", "2gt", default_opts) -- Launch a terminal in horizontal split
keymap("n", "<leader>3", "3gt", default_opts) -- Launch a terminal in horizontal split
keymap("n", "<leader>4", "4gt", default_opts) -- Launch a terminal in horizontal split
keymap("n", "<leader>5", "5gt", default_opts) -- Launch a terminal in horizontal split

-- Terminal Creation
keymap("n", "<leader>t", ":split <Enter> :term <Enter>", default_opts) -- Launch a terminal in horizontal split
keymap("n", "<leader>T", ":vsplit <Enter> :term <Enter>", default_opts) -- Launch a termina lin vertical split

-- Shorthands
keymap("n", "<leader>w", ":w<Enter>", default_opts) -- Write current buffer
keymap("n", "<leader>q", ":q<Enter>", default_opts) -- Quit current buffer

-- Telescope Shortcuts
keymap('n', '<leader>ff', ts.find_files, {})
keymap('n', '<leader>fg', ts.live_grep, {})
keymap('n', '<leader>fb', ts.buffers, {})
keymap('n', '<leader>fh', ts.help_tags, {})

-- LSP Shortcutes
keymap('n', '<leader>rn', ":lua vim.lsp.rename(", default_opts)
