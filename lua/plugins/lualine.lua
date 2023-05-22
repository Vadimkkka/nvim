require('lualine').setup {
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      'branch', 
      {
        'diff',
        colored = true,
        symbols = { added = ' ', modified = ' ', removed = ' ' },
        source = nil,
      }
    },
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'diagnostics'},
    lualine_z = {'location'},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'branch', 'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = { 'nvim-tree' }
}
