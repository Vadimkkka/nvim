require "nvchad.options"

local o = vim.o
o.mouse = ""
o.whichwrap = ""

o.termguicolors = true

-- o.backup = false
o.swapfile = false
-- o.undofile = false
-- o.updatetime = 250
-- o.timeoutlen = 1000

o.wrap = false
-- o.ignorecase = true
-- учитывать регистр если есть заглавные
-- o.smartcase = true
o.shell = "pwsh"
o.winborder = "rounded"

-- o.spell = true
-- en_us
-- o.spelllang = 'ru'
-- o.scrolloff = 8

-- Line Numbers
-- o.number = true
-- o.relativenumber = true
-- Splits
-- vim.opt.splitbelow = true
-- Clipboard
o.clipboard = "unnamedplus"
-- Indent Settings
-- o.expandtab = true
-- o.shiftwidth = 2
-- o.tabstop = 2
-- o.softtabstop = 2
-- o.smartindent = true

-- Russian keymap
o.langmap =
  "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
