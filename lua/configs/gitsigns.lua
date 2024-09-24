local default = require "nvchad.configs.gitsigns"

local options = {
  signs = {
    -- red    
    -- green   
    -- blue  
    add = { text = "" },
    change = { text = "" },
    delete = { text = "" },
    topdelete = { text = "" },
    changedelete = { text = "" },
    untracked = { text = "┆" },
  },
  -- numhl = true,
  current_line_blame = true,
  current_line_blame_opts = {
    ignore_whitespace = true,
  },
  current_line_blame_formatter = "󰠥 <author> 󰔛 <author_time:%d.%m.%y>   <summary>",
  on_attach = function(bufnr)
    local function map(mode, lhs, rhs, opts)
      opts = vim.tbl_extend('force', {noremap = true, silent = true}, opts or {})
      vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
    end
    -- Navigation
    map('n', ']c', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", {desc = "Git Jump to next hunk", expr = true})
    map('n', '[c', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", {desc = "Git Jump to previous hunk", expr = true})
    -- Actions
    map('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>', { desc = "Git Preview hunk" })
    map('n', '<leader>hs', ':Gitsigns stage_hunk<CR>', { desc = "Git Stage hunk" })
    -- map('v', '<leader>hs', ':Gitsigns stage_hunk<CR>')
    map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', { desc = "Git Reset hunk" })
    -- map('v', '<leader>hr', ':Gitsigns reset_hunk<CR>')
    map('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>', { desc = "Git Undo stage hunk" })
    -- map('n', '<leader>gd', '<cmd>Gitsigns diffthis<CR>', { desc = "Git Diff" })
    map('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<CR>', { desc = "Git Toggle deleted" })
  end,
}

return vim.tbl_deep_extend("force", default, options)
