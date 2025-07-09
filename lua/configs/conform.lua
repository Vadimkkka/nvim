local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    css = { "prettier" },
    flow = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    javascript = { "prettier" },
    markdown = { "prettier" },
    scss = { "prettier" },
    typescript = { "prettier" },
    vue = { "prettier" },
    yaml = { "prettier" },

    rust = { "rustfmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    -- timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
