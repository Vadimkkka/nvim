local cmp = require "cmp"
local default = require "nvchad.configs.cmp"

local options = {
  mapping = {
    ["<Up>"] = cmp.mapping.select_prev_item(),
    ["<Down>"] = cmp.mapping.select_next_item(),
    ["<Tab>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
  },
  -- experimental = { ghost_text = true },
}

return vim.tbl_deep_extend("force", default, options)
