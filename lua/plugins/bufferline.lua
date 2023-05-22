require('bufferline').setup {
  options = {
    indicator = { style = "icon", icon = "" },
    offsets = {{ filetype = "NvimTree", text = "🎪", text_align = "center"}},
    show_buffer_close_icons = false,
    show_close_icon = false,
    persist_buffer_sort = false, 
    separator_style = { '', '' },
    always_show_bufferline = false,
  },
  highlights = require("catppuccin.groups.integrations.bufferline").get {
    styles = { "bold" },
  }
}
