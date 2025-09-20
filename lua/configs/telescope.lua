-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/configs/telescope.lua
-- https://github.com/nvim-telescope/telescope.nvim/issues/3436
local default = require "nvchad.configs.telescope"

local options = {
  -- defaults = {
  --   border = false,
  -- },
}

return vim.tbl_deep_extend("force", default, options)
