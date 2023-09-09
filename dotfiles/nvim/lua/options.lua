local set = vim.opt
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local keymap = function(mode, key, action)
  vim.keymap.set(
    mode, key, action,
    { noremap = true, silent = true }
  )
end

set.background = "dark"
set.clipboard = "unnamedplus"
set.completeopt = "noinsert,menuone,noselect"
set.cursorline = true
set.expandtab = true
set.hidden = true
set.inccommand = "split"
set.mouse = "a"
set.number = true
set.relativenumber = true
set.shiftwidth = 2
set.smarttab = true
set.swapfile = false
set.splitright = true
set.tabstop = 2
set.termguicolors = true
set.title = true
set.ttimeoutlen = 0
set.updatetime = 250
set.wildmenu = true
set.wrap = true

augroup('setIndent', { clear = true })
autocmd('Filetype', {
  group = 'setIndent',
  pattern = { 'python' },
  command = 'setlocal shiftwidth=2 tabstop=2'
})

-- Better escape using jj in insert and terminal mode
keymap("i", "jj", "<ESC>")
keymap("t", "JJ", "<C-\\><C-n>")

-- In-Tab Buffer Navigation
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Tab Navigation
keymap("n", " b", ":tabnew<Enter>")
keymap("n", " 1", "1gt")
keymap("n", " 2", "2gt")
keymap("n", " 3", "3gt")
keymap("n", " 4", "4gt")
keymap("n", " 5", "5gt")
keymap("n", "<C-n>", "gT")
keymap("n", "<C-m>", "gt")

-- Terminal Creation
keymap("n", " t", ":term <Enter>") -- Launch a terminal in horizontal split

-- Buffer Creation
keymap("n", " s", ":new <Enter>")
keymap("n", " v", ":vnew <Enter>")

-- Telescope Shortcuts
local ts = require('telescope.builtin')
keymap('n', ' ff', ts.find_files)
keymap('n', ' fg', ts.live_grep)
keymap('n', ' fb', ts.buffers)
keymap('n', ' fh', ts.help_tags)


-- Command Shortcuts
keymap('n', 'fs', ":NERDTree %:p:h <Enter>")
keymap('n', 'ft', ":NERDTreeToggle <Enter>")

keymap('n', ' cf', ":cn <Enter>")
keymap('n', ' cb', ":cN <Enter>")

keymap('n', ' gf', ":Git Blame <Enter>")
keymap('n', ' gr', ":GBrowse <Enter>")
