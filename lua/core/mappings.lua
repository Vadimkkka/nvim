vim.keymap.set('n', '<C-n>', ':NvimTreeFocus<CR>')
vim.keymap.set('n', '<C-т>', ':NvimTreeFocus<CR>')

vim.keymap.set('n', '<tab>w', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<tab>ц', ':BufferLineCyclePrev<CR>')

vim.keymap.set('n', '<tab>e', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<tab>у', ':BufferLineCycleNext<CR>')

vim.keymap.set('n', 'g?', function()
  vim.diagnostic.open_float({"line"})
end)
