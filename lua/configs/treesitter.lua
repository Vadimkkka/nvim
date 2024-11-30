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
    "scss",
    "javascript",
    "typescript",
    "vue",
    "tsx",
    -- "scss",
    -- "comment",
    "rust",
    "make",
    "bash",
    "diff",
    "jsdoc",
    "regex",
    -- "c",
    -- "cpp",
    "sql",
  },
}

return vim.tbl_deep_extend("force", default, options)
