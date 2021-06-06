local lspconfig = require 'lspconfig'

lspconfig.util.default_config = vim.tbl_extend(
  "force",
  lspconfig.util.default_config,
  { on_attach = require 'completion'.on_attach() }
)

lspconfig.clangd.setup{
    filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda' }
}

lspconfig.pyright.setup{}
