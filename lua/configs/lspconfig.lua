-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/configs/lspconfig.lua
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
-- "ts_ls"
local servers = { "html", "cssls", "css_variables", "rust_analyzer" }
local nvlsp = require "nvchad.configs.lspconfig"

-- HACK override icons
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvchad/lsp/init.lua
local severity = vim.diagnostic.severity
vim.diagnostic.config {
  virtual_text = { prefix = "" },
  -- virtual_lines = { current_line = true },
  signs = {
    text = {
      [severity.ERROR] = "",
      [severity.WARN] = "",
      [severity.INFO] = "",
      [severity.HINT] = "",
    },
  },
  underline = true,
  float = { border = "single" },
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = nvlsp.on_init,
    on_attach = nvlsp.on_attach,
    capabilities = nvlsp.capabilities,
  }
end

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
lspconfig.volar.setup {
  on_init = nvlsp.on_init,
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  filetypes = { "typescript", "javascript", "vue" },
  init_options = {
    vue = {
      hybridMode = false,
    },
  },
  -- NOTE for monorepo
  -- init_options = { typescript = { tsdk = "C:/Users/Vadim/AppData/Local/nvs/default/node_modules/typescript/lib" } },
}
