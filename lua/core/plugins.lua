return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  --  Theme
  use 'navarasu/onedark.nvim'
  use { 'catppuccin/nvim', as = 'catppuccin' }
  --  Syntax Highlightin
  use 'nvim-treesitter/nvim-treesitter'
  use 'windwp/nvim-ts-autotag'
  use 'HiPhish/nvim-ts-rainbow2'
  use 'norcalli/nvim-colorizer.lua'
  --  Usability 
  use 'windwp/nvim-autopairs'
  use 'romainl/vim-cool'
  use 'wakatime/vim-wakatime'
  use 'lewis6991/gitsigns.nvim'
  use 'numToStr/Comment.nvim'
  use {
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' }
  }
  --  File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'nvim-tree/nvim-web-devicons'
  }
  --  Header
  use {
    'akinsho/bufferline.nvim', tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'
  }
  --  Footer
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  --  LSP
  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
  }
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    'onsails/lspkind.nvim',
    "ray-x/lsp_signature.nvim",
  }
end)
