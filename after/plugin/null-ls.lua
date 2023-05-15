local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

null_ls.setup({
  -- Use Mason to install formatters
  sources = {
    formatting.prettier, formatting.black, formatting.gofmt, formatting.shfmt,
    formatting.clang_format, formatting.cmake_format, formatting.dart_format, formatting.autopep8,
    formatting.isort, formatting.rustfmt, formatting.stylua, formatting.lua_format.with({
      extra_args = {
        '--no-keep-simple-function-one-line', '--no-break-after-operator', '--column-limit=100',
        '--break-after-table-lb', '--indent-width=2'
      }
    }), formatting.isort, formatting.codespell.with({filetypes = {'markdown'}})
  },
  -- run NvimTreeGenerateOnAttach
    attach = function()
        vim.cmd("NvimTreeGenerateOnAttach")
    end
  })
