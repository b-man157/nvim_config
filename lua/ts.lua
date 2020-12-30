require'nvim-treesitter.configs'.setup {
  ensure_installed = { "bash", "c", "cpp", "html", "lua", "python" },
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  }
}
