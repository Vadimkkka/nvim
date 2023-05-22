require('catppuccin').setup {
    flavour = "macchiato",
    transparent_background = true,
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      native_lsp = { enabled = true },
      treesitter = true,
      ts_rainbow2 = true,
    },
}
