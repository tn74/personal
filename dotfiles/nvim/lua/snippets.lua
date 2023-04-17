local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }
local ls = require("luasnip")
local types = require("luasnip.util.types")
local loaders = require("luasnip.loaders")

ls.config.set_config {
  -- This tells LuaSnippet to remember the last snippet
  -- so I can jump back to it even I've moved out.
  history = true,

  -- enables dynamic snippets that update as I type
  updateEvents = "TextChanged,TextChangedI",

  enable_autosnippets = true,
}


vim.keymap.set("i", '<c-j>',
  function() if ls.expand_or_jumpable() then ls.expand_or_jump() end end,
  default_opts)


vim.keymap.set("i", '<c-k>',
  function() if ls.jumpable(-1) then ls.jump(-1) end end,
  default_opts)

-- Documentation Generator
require("luasnip/loaders/from_vscode").lazy_load()

vim.keymap.set("n", "<c-l>", ":lua require('neogen').generate()<CR>", default_opts)


require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "go", "lua", "vim", "vimdoc", "query" },
  highlight = {
    enable = true
  }
}
require('neogen').setup({
  snippet_engine = "luasnip",
  languages = {
    python = {
      template = {
        annotation_convention = "google_docstrings"
      }
    },
  }
})
