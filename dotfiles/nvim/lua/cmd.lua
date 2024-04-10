local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local bufmap = function(mode, lhs, rhs)
  local opts = { buffer = true }
  vim.keymap.set(mode, lhs, rhs, opts)
end


vim.cmd("colorschem ayu")

augroup('setIndent', { clear = true })
autocmd('Filetype', {
  group = 'setIndent',
  pattern = { 'python' },
  command = 'setlocal shiftwidth=2 tabstop=2'
})

-- Shortcuts to take advantage of LSP features
augroup('lsp', { clear = true })
autocmd('LspAttach', {
  group = 'lsp',
  desc = 'LSP actions',
  callback = function()
    -- Displays hover information about the symbol under the cursor
    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')

    -- Jump to the definition
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')

    -- Jump to declaration
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')

    -- Lists all the implementations for the symbol under the cursor
    bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')

    -- Jumps to the definition of the type symbol
    bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')

    -- Lists all the references
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')

    -- Displays a function's signature information
    -- bufmap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')

    -- Renames all references to the symbol under the cursor
    bufmap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>')

    -- Selects a code action available at the current cursor position
    bufmap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>')
    bufmap('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')

    -- Show diagnostics in a floating window
    bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')

    -- Move to the previous diagnostic
    bufmap('n', '<leader>db', '<cmd>lua vim.diagnostic.goto_prev()<cr>')

    -- Move to the next diagnostic
    bufmap('n', '<leader>df', '<cmd>lua vim.diagnostic.goto_next()<cr>')

    -- Format
    bufmap('n', '<leader>cf', '<cmd>lua vim.lsp.buf.format()<cr>')
  end
})

-- Go organize imports
autocmd('BufWritePre', {
  group = 'lsp',
  pattern = {'*.go'},
  callback = function()
    vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
  end
})

-- Quickfix Window organize imports
autocmd('FileType', {
  pattern = 'qf',
  callback = function()
    bufmap('n', "<Enter>", "<C-w><Enter>")
  end
})
