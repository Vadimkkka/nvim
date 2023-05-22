require('nvim-tree').setup {
  hijack_cursor = true,
  view = {
    cursorline = false,
    width = {}
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
    root_folder_label = false,
    highlight_opened_files = "icon",
    icons = {
      show = {
        folder_arrow = false
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
          staged = "",
          untracked = "󰡫",
          deleted = "󰩹",
        }
      },
    },
    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md", "package.json" },
  },
  update_focused_file = {
    enable = true,
  },
  trash = {
    cmd = "trash",
  },
}
