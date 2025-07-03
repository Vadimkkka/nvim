local default = require "nvchad.configs.treesitter"

local options = {
  ensure_installed = {
    "lua",
    "luadoc",
    -- "vim",
    -- "vimdoc",
    "html",
    "css",
    "scss",
    "javascript",
    "jsdoc",
    "typescript",
    "vue",
    "tsx",
    -- "comment",
    -- "diff",
    -- "dockerfile",
    "rust",
    "make",
    "bash",
    -- "regex",
    -- "c",
    -- "cpp",
    -- "printf",
    "sql",
    -- "yaml",
    "toml",
  },
}

return vim.tbl_deep_extend("force", default, options)
