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
keymap("n", "<leader>n", ":tabnew<Enter>", default_opts)
keymap("n", "<leader>j", "1gt", default_opts)
keymap("n", "<leader>k", "2gt", default_opts)
keymap("n", "<leader>l", "3gt", default_opts)
keymap("n", "<leader>;", "4gt", default_opts)

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
keymap("n", "F", ":cn <Enter>", default_opts)
keymap("n", "Y", ":cn <Enter>", default_opts)
keymap("n", "D", ":cN <Enter>", default_opts)


-- Git Blame
keymap("n", "<leader>gb", ":Git blame <Enter>", default_opts)
keymap("n", "<leader>gs", ":GitBlameCopySHA <Enter>", default_opts)
keymap("n", "<leader>gu", ":GitBlameCopyCommitURL <Enter>", default_opts)
keymap({"n", "v"}, "<leader>go", ":GitBlameCopyFileURL <Enter>", default_opts)

-- Git Hunks
local gs = require("gitsigns")
keymap('n', '<leader>hs', gs.stage_hunk)
keymap('n', '<leader>hr', gs.reset_hunk)
keymap('v', '<leader>hs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
keymap('v', '<leader>hr', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
keymap('n', '<leader>hS', gs.stage_buffer)
keymap('n', '<leader>hu', gs.undo_stage_hunk)
keymap('n', '<leader>hR', gs.reset_buffer)
keymap('n', '<leader>hp', gs.preview_hunk)
keymap('n', '<leader>hb', function() gs.blame_line{full=true} end)
keymap('n', '<leader>tb', gs.toggle_current_line_blame)
keymap('n', '<leader>hd', gs.diffthis)
keymap('n', '<leader>hD', function() gs.diffthis('~') end)
keymap('n', '<leader>td', gs.toggle_deleted)
keymap({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')

-- Navigation
keymap('n', ']c', function()
  if vim.wo.diff then return ']c' end
  vim.schedule(function() gs.next_hunk() end)
  return '<Ignore>'
end, {expr=true})

keymap('n', '[c', function()
  if vim.wo.diff then return '[c' end
  vim.schedule(function() gs.prev_hunk() end)
  return '<Ignore>'
end, {expr=true})

-- Reload 
keymap('n', '<leader>r', ':lua _G.Reload() <Enter>', default_opts)
