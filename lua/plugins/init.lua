return {
  -- NOTE Default
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      scope = { char = "" },
      indent = { char = "" },
    },
    config = function(_, opts)
      require("configs.indent-blankline").init(opts)
    end,
  },
  { "nvim-tree/nvim-tree.lua", opts = require "configs.tree" },
  { "folke/which-key.nvim", enabled = false },
  {
    "stevearc/conform.nvim",
    -- event = "BufWritePre",
    opts = require "configs.conform",
  },
  { "lewis6991/gitsigns.nvim", lazy = false, opts = require "configs.gitsigns" },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  { "hrsh7th/nvim-cmp", opts = require "configs.cmp" },
  { "NvChad/nvim-colorizer.lua", opts = { user_default_options = { css_fn = true } } },
  { "nvim-treesitter/nvim-treesitter", opts = require "configs.treesitter" },
  -- NOTE Custom
  { "hiphish/rainbow-delimiters.nvim", event = "User FilePost" },
  -- { "romainl/vim-cool", lazy = false },
  { "wakatime/vim-wakatime", lazy = false },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      signs = false,
      highlight = {
        pattern = [[\W\s(KEYWORDS)\s]],
      },
      search = {
        pattern = [[\W\s(KEYWORDS)\s]],
      },
    },
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "todo")
      require("todo-comments").setup(opts)
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = "BufReadPre",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    opts = require "configs.commentstring",
  }
  -- flash.nvim/hop.nvim
  -- crates.nvim
  -- package-info.nvim
  -- modicator.nvim
  -- {
  --   'akinsho/bufferline.nvim',
  --   lazy = false,
  --   version = "*",
  --   dependencies = 'nvim-tree/nvim-web-devicons',
  --   config = function ()
  --     require "configs.bufferline"
  --   end
  -- }
}
