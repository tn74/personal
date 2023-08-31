local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }
local ts = require('telescope.builtin')

vim.cmd("colorschem ayu")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better escape using jj in insert and terminal mode
keymap("i", "jj", "<ESC>", default_opts)
keymap("t", "JJ", "<C-\\><C-n>", default_opts)

-- In-Tab Buffer Navigation
keymap("n", "<C-h>", "<C-w>h", default_opts)
keymap("n", "<C-j>", "<C-w>j", default_opts)
keymap("n", "<C-k>", "<C-w>k", default_opts)
keymap("n", "<C-l>", "<C-w>l", default_opts)

-- Tab Navigation
keymap("n", " b", ":tabnew<Enter>", default_opts)
keymap("n", " 1", "1gt", default_opts)
keymap("n", " 2", "2gt", default_opts)
keymap("n", " 3", "3gt", default_opts)
keymap("n", " 4", "4gt", default_opts)
keymap("n", " 5", "5gt", default_opts)
keymap("n", "<C-n>", "gT", default_opts)
keymap("n", "<C-m>", "gt", default_opts)

-- Terminal Creation
keymap("n", " t", ":term <Enter>", default_opts) -- Launch a terminal in horizontal split

-- Buffer Creation
keymap("n", " s", ":new <Enter>", default_opts)
keymap("n", " v", ":vnew <Enter>", default_opts)

-- Telescope Shortcuts
keymap('n', ' ff', ts.find_files, {})
keymap('n', ' fg', ts.live_grep, {})
keymap('n', ' fb', ts.buffers, {})
keymap('n', ' fh', ts.help_tags, {})

keymap('n', 'fs', ":NERDTree %:p:h <Enter>", default_opts)
keymap('n', 'ft', ":NERDTreeToggle <Enter>", default_opts)

keymap('n', ' cf', ":cn <Enter>", default_opts)
keymap('n', ' cb', ":cN <Enter>", default_opts)
