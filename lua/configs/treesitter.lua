local default = require "nvchad.configs.treesitter"

local options = {
  ensure_installed = {
    "lua",
    "luadoc",
    "printf",
    "vim",
    "vimdoc",

    "html",
    "css",
    "javascript",
    "typescript",
    "vue",
    -- "scss",
    -- "comment",
    "rust",
    "make",
    -- "c",
    -- "cpp",
  },
}

return vim.tbl_deep_extend("force", default, options)
