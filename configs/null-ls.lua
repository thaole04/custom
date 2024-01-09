local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "css", } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua.with { filetypes = {"lua" } },

  -- sh
  b.formatting.shfmt.with { filetypes = { "sh", "zsh" } },
  b.diagnostics.shellcheck.with { filetypes = { "sh", "zsh" } },


  -- cpp and c
  b.formatting.clang_format,

  -- python
  b.formatting.black,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
