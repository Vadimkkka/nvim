local cmp = require "cmp"
local default = require "nvchad.configs.cmp"

local options = {
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = {
    ["<Up>"] = cmp.mapping.select_prev_item(),
    ["<Down>"] = cmp.mapping.select_next_item(),
    ["<C-c>"] = cmp.mapping.complete(),
    ["<Tab>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
  },
  -- experimental = { ghost_text = true },
}

return vim.tbl_deep_extend("force", default, options)
