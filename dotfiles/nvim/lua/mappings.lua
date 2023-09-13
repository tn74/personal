local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }

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
keymap("n", "<leader>b", ":tabnew<Enter>", default_opts)
keymap("n", "<leader>1", "1gt", default_opts)
keymap("n", "<leader>2", "2gt", default_opts)
keymap("n", "<leader>3", "3gt", default_opts)
keymap("n", "<leader>4", "4gt", default_opts)
keymap("n", "<leader>5", "5gt", default_opts)
keymap("n", "<C-n>", "gT", default_opts)
keymap("n", "<C-m>", "gt", default_opts)

-- Terminal Creation
keymap("n", "<leader>t", ":term <Enter>", default_opts) -- Launch a terminal in horizontal split

-- Buffer Creation
keymap("n", "<leader>s", ":new <Enter>", default_opts)
keymap("n", "<leader>v", ":vnew <Enter>", default_opts)

-- Telescope Shortcuts
local ts = require('telescope.builtin')
keymap("n", "<leader>ff", ts.find_files, {})
keymap("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", {})
keymap("n", "<leader>fb", ts.buffers, {})
keymap("n", "<leader>fh", ts.help_tags, {})
keymap("n", "<leader>fv", ts.git_branches, {})
keymap("n", "<leader>fs", ts.git_status, {})


-- Command Shortcuts
keymap("n", "<leader>es", ":NERDTree %:p:h <Enter>", default_pots)
keymap("n", "<leader>ee", ":NERDTreeToggle <Enter>", default_opts)

-- Quickfix
keymap("n", "<leader>co", ":copen <Enter>", default_opts)
keymap("n", "<leader>cc", ":cclose <Enter>", default_opts)
keymap("n", "<leader>cn", ":cn <Enter>", default_opts)
keymap("n", "<leader>cN", ":cN <Enter>", default_opts)

keymap("n", "<leader>gb", ":Git blame <Enter>", default_opts)
keymap("v", "g", ":GBrowse <Enter>", default_opts)

