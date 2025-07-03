local default = require "nvchad.configs.nvimtree"

local options = {
  hijack_cursor = true,
  view = {
    cursorline = false,
    width = { min = 30 },
    -- centralize_selection = true,
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
    -- highlight_opened_files = "icon",
    indent_markers = { enable = false },
    icons = {
      show = {
        folder_arrow = false,
      },
      git_placement = "signcolumn",
      glyphs = {
        folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
        },
        git = {
          unstaged = "",
          -- staged = "",
          -- untracked = "󰡫",
          untracked = "",
          deleted = "",
          unmerged = "",
        },
      },
    },
    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md", "package.json" },
  },
  -- update_focused_file = {
  --   enable = true,
  -- },
  -- trash = {
  --   cmd = "trash",
  -- },
}

return vim.tbl_deep_extend("force", default, options)
