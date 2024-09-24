local M = {}

M.init = function (opts)
  dofile(vim.g.base46_cache .. "blankline")
  -- rainbow-delimiters.nvim integration
  dofile(vim.g.base46_cache .. "rainbowdelimiters")

  local hooks = require "ibl.hooks"
  hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
  require("ibl").setup(opts)
end

return M
