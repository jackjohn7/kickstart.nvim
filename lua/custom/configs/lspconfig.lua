local lspconfig = require 'lspconfig'
local util = require 'lspconfig.util'

lspconfig.millet.setup {}

lspconfig.gleam.setup {}

lspconfig.gopls.setup {}

lspconfig.prolog_lsp = {
  default_config = {
    cmd = {
      'swipl',
      '-g',
      'use_module(library(lsp_server)).',
      '-g',
      'lsp_server:main',
      '-t',
      'halt',
      '--',
      'stdio',
    },
    filetypes = { 'prolog' },
    root_dir = util.root_pattern 'pack.pl',
  },
  docs = {
    description = [[
  https://github.com/jamesnvc/prolog_lsp

  Prolog Language Server
  ]],
  },
}

return {}
