require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Visual Effects
  use 'ayu-theme/ayu-vim'
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Git
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

  -- File Exploration
  use 'preservim/nerdtree'
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Code Navigation and Writing
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'hashivim/vim-terraform'
  use({ "petertriho/cmp-git", requires = "nvim-lua/plenary.nvim" })

  -- snippets
  use({
    "L3MON4D3/LuaSnip",
  	-- follow latest release.
  	tag = "v<CurrentMajor>.*",
  	-- install jsregexp (optional!:).
  	run = "make install_jsregexp"
  })
end)

require('lualine').setup {
    sections = {
        lualine_a = { 'mode' },
        lualine_b = {
            {
                'filename',
                file_status = true, -- displays file status (readonly status, modified status)
                path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
            }
        },
        lualine_c = { 'branch', 'diff', 'diagnostics' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
}


require('telescope').setup {
    defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        mappings = {
            n = {
                -- map actions.which_key to <C-h> (default: <C-/>)
                -- actions.which_key shows the mappings for your picker,
                -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                ["i"] = "file_split",
                ["s"] = "file_vsplit",
            },
        },
    },
}

require("cmp_nvim_ultisnips").setup {}
