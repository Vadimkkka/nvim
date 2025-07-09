local map = vim.keymap.set
-- NOTE nvimtree
map("n", "<leader>ct", "<cmd>NvimTreeClose<CR>", { desc = "Nvimtree Close" })
-- NOTE blankline
--
-- map("n", "<leader>cc", function()
--   local config = { scope = {} }
--   config.scope.exclude = { language = {}, node_type = {} }
--   config.scope.include = { node_type = {} }
--   local node = require("ibl.scope").get(vim.api.nvim_get_current_buf(), config)
--
--   if node then
--     local start_row, _, end_row, _ = node:range()
--     if start_row ~= end_row then
--       vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start_row + 1, 0 })
--       vim.api.nvim_feedkeys("_", "n", true)
--     end
--   end
-- end, { desc = "Jump To current context" })
-- =, ==
map("n", ";", ":", { desc = "General Enter command mode" })
-- map("n", "ж", ":", { desc = "General Enter command mode [ru]" })
-- NOTE ra
--
-- map("n", "<leader>re", function()
--   require "nvchad.lsp.renamer"()
-- end, { desc = "rename variable under cursor" })

if vim.fn.has "win64" then
  map("i", "<C-v>", "<C-r>+", { desc = "Paste" })
  map("c", "<C-v>", "<C-r>+", { desc = "Paste" })
end

map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Buffers Close all" })
-- NOTE Git
map("n", "<leader>gf", "<cmd>Telescope git_files<CR>", { desc = "Telescope git files" })
map("n", "<leader>fr", "<cmd>Telescope lsp_references<CR>", { desc = "Telescope Lsp references" })
-- NOTE TodoComments
map("n", "<leader>tt", "<cmd>TodoTelescope<CR>", { desc = "Telescope TodoComments" })

map("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "TodoComments Jump to next" })

map("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "TodoComments Jump to previous" })
-- NOTE Diagnostic window
map("n", "g?", function()
  vim.diagnostic.open_float()
end, { desc = "Show Diagnostics under the cursor" })
-- n shift+k doc
-- i ctrl+s signature
