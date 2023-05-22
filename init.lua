-- Basic config
require("core.configs")
require("core.plugins")
require("core.mappings")
-- Plugins config
-- Themes
require('plugins.onedark')
require("plugins.catppuccin")
-- Syntax Highlightin
require("plugins.treesitter")
require("plugins.colorizer")
require("plugins.todo-comments")
-- Usability
require("plugins.autotag")
require("plugins.autopairs")
require("plugins.gitsigns")
require("plugins.comment")
-- require("plugins.dashboard")
-- File Explorer
require("plugins.tree")
-- Header
require("plugins.bufferline")
-- Footer
require("plugins.lualine")
-- LSP
require("plugins.lsp-installer")
require("plugins.cmp")
require("plugins.lsp_signature")

vim.cmd.colorscheme "catppuccin"
