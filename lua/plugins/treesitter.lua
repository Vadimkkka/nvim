require('nvim-treesitter.configs').setup {
  ensure_installed = { "html", "css", "javascript", "typescript", "vue", "scss", "comment", "lua", "rust" },
  highlight = { enable = true },
  rainbow = { enable = true },
}
