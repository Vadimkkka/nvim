-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/mappings.lua
-- require "nvchad.mappings"
local map = vim.keymap.set
-- NOTE DEFAULT
map("i", "<C-b>", "<ESC>^i", { desc = "Move Beginning of line" })
map("i", "<C-e>", "<End>", { desc = "Move End of line" })
map("i", "<C-h>", "<Left>", { desc = "Move Left" })
map("i", "<C-l>", "<Right>", { desc = "Move Right" })
map("i", "<C-j>", "<Down>", { desc = "Move Down" })
map("i", "<C-k>", "<Up>", { desc = "Move Up" })

map("n", "<C-h>", "<C-w>h", { desc = "Switch(window) Left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch(window) Right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch(window) Down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch(window) Up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })

map("n", "<C-w>", "<cmd>w<CR>", { desc = "General Save file" })
map("n", "<C-y>", "<cmd>%y+<CR>", { desc = "General Copy whole file" })

map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "Toggle nvcheatsheet" })
-- NOTE format
map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "General Format file" })
-- NOTE tabufline
map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "Buffers goto next" })
map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "Buffers goto previous" })
map("n", "<leader>x", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Buffers close" })
-- NOTE comment
map("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle Comment", remap = true })
-- NOTE nvimtree
map("n", "<leader>n", "<cmd>NvimTreeToggle<CR>", { desc = "Nvimtree Toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "Nvimtree Focus window" })
-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
-- map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
-- map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
-- map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
-- map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "telescope nvchad themes" })
-- map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
-- map(
--   "n",
--   "<leader>fa",
--   "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
--   { desc = "telescope find all files" }
-- )
-- NOTE blankline
map("n", "<leader>cc", function()
  local config = { scope = {} }
  config.scope.exclude = { language = {}, node_type = {} }
  config.scope.include = { node_type = {} }
  local node = require("ibl.scope").get(vim.api.nvim_get_current_buf(), config)

  if node then
    local start_row, _, end_row, _ = node:range()
    if start_row ~= end_row then
      vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start_row + 1, 0 })
      vim.api.nvim_feedkeys("_", "n", true)
    end
  end
end, { desc = "Jump To current context" })

-- NOTE CUSTOM
map("n", ";", ":", { desc = "General Enter command mode" })
-- map("n", "ж", ":", { desc = "General Enter command mode [ru]" })

map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Buffers Close all" })
-- NOTE Git
map("n", "<leader>gf", "<cmd>Telescope git_files<CR>", { desc = "Telescope git files" })
map("n", "<leader>dr", "<cmd>Telescope lsp_references<CR>", { desc = "Telescope Lsp references" })
map("n", "<leader>tt", "<cmd>TodoTelescope<CR>", { desc = "Telescope TodoComments" })
-- NOTE TodoComments
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