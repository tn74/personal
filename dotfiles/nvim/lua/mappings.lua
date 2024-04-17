local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }

local bufnav = function (modes, char, forward, backward)
  local backward_mv = string.format(';%s', char)
  keymap(modes, backward_mv, function()
    if vim.wo.diff then return backward_mv end
    vim.schedule(function() backward() end)
    return '<Ignore>'
  end, {expr=true})

  local forward_mv = string.format('\'%s', char)
  keymap(modes, forward_mv, function()
    if vim.wo.diff then return forward_mv end
    vim.schedule(function() forward() end)
    return '<Ignore>'
  end, {expr=true})
end

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
keymap("n", "<leader>1", "1gt", default_opts)
keymap("n", "<leader>2", "2gt", default_opts)
keymap("n", "<leader>3", "3gt", default_opts)
keymap("n", "<leader>4", "4gt", default_opts)

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

-- File Tree Shortcuts
keymap("n", "<leader>es", ":NERDTree %:p:h <Enter>", default_pots)
keymap("n", "<leader>ee", ":NERDTreeToggle <Enter>", default_opts)

-- Quickfix
keymap("n", "<leader>co", ":copen <Enter>", default_opts)
keymap("n", "<leader>cc", ":cclose <Enter>", default_opts)
keymap("n", "<leader>cn", ":cn <Enter>", default_opts)
keymap("n", "<leader>cN", ":cN <Enter>", default_opts)

-- Git
local gs = require("gitsigns")
keymap("n", "<leader>gb", ":Git blame <Enter>", default_opts)
keymap("n", "<leader>gs", ":GitBlameCopySHA <Enter>", default_opts)
keymap({"n", "v"}, "<leader>gu", ":GitBlameCopyCommitURL <Enter>", default_opts)
keymap({"n", "v"}, "<leader>go", ":GitBlameCopyFileURL <Enter>", default_opts)
keymap('n', '<leader>gs', gs.stage_hunk)
keymap('n', '<leader>gr', gs.reset_hunk)
keymap('v', '<leader>gs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
keymap('v', '<leader>gr', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
keymap('n', '<leader>gS', gs.stage_buffer)
keymap('n', '<leader>gu', gs.undo_stage_hunk)
keymap('n', '<leader>gR', gs.reset_buffer)
keymap('n', '<leader>gp', gs.preview_hunk)
keymap('n', '<leader>gb', function() gs.blame_line{full=true} end)
keymap('n', '<leader>gtb', gs.toggle_current_line_blame)
keymap('n', '<leader>gd', gs.diffthis)
keymap('n', '<leader>gD', function() gs.diffthis('~') end)
keymap('n', '<leader>gtd', gs.toggle_deleted)
keymap({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')

-- Aerial
local aerial = require("aerial")
keymap('n', '<leader>a', ":AerialToggle<CR>")

-- Buffer Navigation
bufnav('n', 'a', aerial.next, aerial.prev)
bufnav('n', 's', gs.next_hunk, gs.prev_hunk)
bufnav('n', 'd', vim.diagnostic.goto_next, vim.diagnostic.goto_next)

-- Neogen
keymap('n', '<leader>cd', ":Neogen <Enter>")
