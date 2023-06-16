local builtin = require('telescope.builtin')
-- Files
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- Git
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
-- Lsp
vim.keymap.set('n', '<leader>dr', builtin.lsp_references, {})
-- Other
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
