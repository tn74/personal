
ls = require("luasnip")
types = require("luasnip.util.types")
loaders = require("luasnip.loaders")

ls.config.set_config{
  -- This tells LuaSnippet to remember the last snippet
  -- so I can jump back to it even I've moved out.
  history = true,

  -- enables dynamic snippets that update as I type
  updateEvents = "TextChanged,TextChangedI",

  enable_autosnippets = true,
}


ls.add_snippets( "all", {
  ls.parser.parse_snippet(
    'func',
    'function ${1}(${2}) \n{\n\t${3}\n}'),
  }
)
