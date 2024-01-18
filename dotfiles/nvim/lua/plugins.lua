require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Visual Effects
  use 'ayu-theme/ayu-vim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup {
        sections = {
          lualine_a = { 'mode' },
          lualine_b = {
            {
              'filename',
              file_status = true, -- displays file status (readonly status, modified status)
              path = 1            -- 0 = just filename, 1 = relative path, 2 = absolute path
            }
          },
          lualine_c = { 'branch', 'diff', 'diagnostics' },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' }
        },
        inactive_sections = {
          lualine_a = { 'mode' },
          lualine_b = {
            {
              'filename',
              file_status = true, -- displays file status (readonly status, modified status)
              path = 1            -- 0 = just filename, 1 = relative path, 2 = absolute path
            }
          },
          lualine_c = { 'branch', 'diff', 'diagnostics' },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' }
        },
      }
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter', 
    run = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        -- A list of parser names, or "all" (the five listed parsers should always be installed)
        ensure_installed = { "c", "lua", "vim", "go", "typescript", "python"},

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,

        ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
        -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

        highlight = {
          enable = true,

          -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
          -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
          -- Using this option may slow down your editor, and you may see some duplicate highlights.
          -- Instead of true it can also be a list of languages
          additional_vim_regex_highlighting = false,
        },
      }
    end
  }

  -- Git
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use {
    'f-person/git-blame.nvim',
    config= function()
     require('gitblame').setup({
      enabled = true,
     })
    end
  }
  use  {
    'lewis6991/gitsigns.nvim',
    config = function() 
      require('gitsigns').setup()
    end
  }

  -- File Exploration
  use 'preservim/nerdtree'

  -- Telescope and Plugins
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { "nvim-telescope/telescope-live-grep-args.nvim" },
      { 'BurntSushi/ripgrep' },
    },
    config = function() 
      local lga_actions = require("telescope-live-grep-args.actions")
      require('telescope').setup {
        defaults = {
          -- Default configuration for telescope goes here:
          -- config_key = value,
          mappings = {
            i = {
              -- map actions.which_key to <C-h> (default: <C-/>)
              -- actions.which_key shows the mappings for your picker,
              -- e.g. git_{create, delete, ...}_branch for the git_branches picker
              ["<C-v>"] = "file_split",
              ["<C-s>"] = "file_vsplit",
              ["<C-d>"] = "delete_buffer",
            },
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
          },
          live_grep_args = {
            auto_quoting = true, -- enable/disable auto-quoting
            -- define mappings, e.g.
            mappings = { -- extend mappings
              i = {
                ["<C-k>"] = lga_actions.quote_prompt(),
                ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
              },
            },
            -- ... also accepts theme settings, for example:
            -- theme = "dropdown", -- use dropdown theme
            -- theme = { }, -- use own theme spec
            -- layout_config = { mirror=true }, -- mirror preview pane
          },
        }
      }
      -- To get fzf loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require('telescope').load_extension('fzf')
      require('telescope').load_extension("live_grep_args")
      require('telescope').load_extension("live_grep_args")
    end
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  --  LSP
  use {
    'neovim/nvim-lspconfig',
    requires = {
      { 'williamboman/mason-lspconfig.nvim' },
      { 'williamboman/mason.nvim' },
    },
    config= function()
      require("mason").setup()
      require("mason-lspconfig").setup()
      local lspconfig = require('lspconfig')
      -- Language Servers
      lspconfig.lua_ls.setup({}) --lua
      -- lspconfig.jedi_language_server.setup{}
      lspconfig.pyright.setup{
        on_attach = on_attach,
        settings = {
          pyright = {
            autoImportCompletion = true
          },
          python = {
            analysis = {
              autoSearchPaths = true,
              autoImportCompletion = true,
              diagnosticMode = 'openFilesOnly',
              useLibraryCodeForTypes = true,
              typeCheckingMode = 'off'
            }
          }
        }
      } 
      lspconfig.gopls.setup {                                 -- go
        cmd = { "gopls", "serve" },
        filetypes = { "go", "gomod" },
        root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
          },
        },
      }
    end
  }

  -- Language Tools
  -- use { 
  --   'fatih/vim-go',
  --   config = function()
  --     vim.g.go_gopls_enabled = 0
  --   end
  -- }

  -- Completion Engine
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      local cmp = require 'cmp'
      cmp.setup({
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
          ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),     -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'buffer' },
        })
      })

      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' },
          { name = 'cmdline' }
        }),
      })
    end
  }

  use {
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
end)
