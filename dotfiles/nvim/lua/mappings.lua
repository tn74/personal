local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }
local ts = require('telescope.builtin')
local ls = require('luasnip')

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better escape using jj in insert and terminal mode
keymap("i", "jj", "<ESC>", default_opts)
keymap("t", "<leader>jj", "<C-\\><C-n>", default_opts)

-- In-Tab Buffer Navigation
keymap("n", "<leader>h", "<C-w>h", default_opts)
keymap("n", "<leader>j", "<C-w>j", default_opts)
keymap("n", "<leader>k", "<C-w>k", default_opts)
keymap("n", "<leader>l", "<C-w>l", default_opts)

-- Tab Navigation
keymap("n", "<leader>b", ":tabnew<Enter>", default_opts)
keymap("n", "<leader>1", "1gt", default_opts)
keymap("n", "<leader>2", "2gt", default_opts)
keymap("n", "<leader>3", "3gt", default_opts)
keymap("n", "<leader>4", "4gt", default_opts)
keymap("n", "<leader>5", "5gt", default_opts)

-- Terminal Creation
keymap("n", "<leader>t", ":term <Enter>", default_opts) -- Launch a terminal in horizontal split

-- Buffer Creation
keymap("n", "<leader>s", ":new <Enter>", default_opts)
keymap("n", "<leader>v", ":vnew <Enter>", default_opts)

-- Shorthands
keymap("n", "<leader>w", ":w<Enter>", default_opts) -- Write current buffer
keymap("n", "<leader>q", ":q<Enter>", default_opts) -- Quit current buffer

-- Telescope Shortcuts
keymap('n', '<leader>ff', ts.find_files, {})
keymap('n', '<leader>fg', ts.live_grep, {})
keymap('n', '<leader>fb', ts.buffers, {})
keymap('n', '<leader>fh', ts.help_tags, {})

keymap('n', 'fs', ":NERDTree %:p:h <Enter>", default_opts)
keymap('n', 'ft', ":NERDTreeToggle <Enter>", default_opts)
