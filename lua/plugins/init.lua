return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- NOTE Default
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      scope = { enabled = false },
      indent = { char = "" },
    },
    config = function(_, opts)
      require("configs.indent-blankline").init(opts)
    end,
  },
  { "nvim-tree/nvim-tree.lua", opts = require "configs.tree" },
  { "folke/which-key.nvim", enabled = true },
  { "lewis6991/gitsigns.nvim", event = "User FilePost", opts = require "configs.gitsigns" },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- test new blink
  { import = "nvchad.blink.lazyspec" },
  {
    "Saghen/blink.cmp",
    opts = require "configs.blink",
  },
  -- { "hrsh7th/nvim-cmp", opts = require "configs.cmp" },
  { "NvChad/nvim-colorizer.lua", opts = { user_default_options = { css_fn = true } } },
  { "nvim-treesitter/nvim-treesitter", opts = require "configs.treesitter" },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    cmd = "Telescope",
    opts = require "configs.telescope",
  },
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
    event = "User FilePost",
    opts = require "configs.commentstring",
  },
  {
    "mawkler/modicator.nvim",
    event = "User FilePost",
    init = function()
      -- vim.o.termguicolors = true
      -- vim.o.cursorline = true
      -- vim.o.number = true
    end,
    opts = {
      highlights = {
        defaults = { bold = true },
      },
    },
  },
  {
    "folke/flash.nvim",
    event = "User FilePost",
    opts = {
      modes = {
        char = {
          enabled = false,
          jump_labels = true,
        },
        -- search = {
        --   exclude = { "blink-cmp-menu" },
        -- },
      },
      prompt = {
        enabled = false,
      },
    },
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      -- { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  -- git-conflict.nvim
  --
  -- package-info.nvim
  -- crates.nvim
}
