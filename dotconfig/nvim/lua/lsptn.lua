local M = {}

function M.config()

  require("mason").setup()
  require("mason-lspconfig").setup({})
  -- Language Servers
  vim.lsp.config['ruff'] = {
    filetypes = {'python'},
    init_options = {
      settings = {
        lint = {
          select = { "F401", "F841", "E", "F", "W", "I" },
          fixable = { "F841" },
        }
      }
    }
  }
  -- Jedi provides go to def functionality
  -- vim.lsp.config["jedi-language-server"]

  vim.lsp.config["gopls"] = { -- go
    cmd = { "gopls", "serve" },
    filetypes = { "go", "gomod" },
    -- root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  }

  -- Setup Diagnostics
  vim.diagnostic.config({
    virtual_text = {
      prefix = '●', -- Custom prefix for virtual text diagnostics
      spacing = 2,
    },
    signs = true,             -- Enable signs in the sign column
    update_in_insert = false, -- Don't update diagnostics in insert mode
    float = {
      border = 'rounded',     -- Rounded border for diagnostic floating windows
      focusable = false,
      source = true,
      header = '',
      prefix = '',
    },
    -- Other options as needed
  })
end

M.config()
return M
