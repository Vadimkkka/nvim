require "nvchad.options"

vim.opt.whichwrap = ""

local o = vim.o
o.termguicolors = true
o.mouse = ""
o.showmode = false

o.undofile = false
o.updatetime = 4000
o.timeoutlen = 1000

o.wrap = false
o.ignorecase = true
-- учитывать регистр если есть заглавные
o.smartcase = true

-- Line Numbers
o.number = true
-- o.relativenumber = true
-- Splits
-- vim.opt.splitbelow = true
-- Clipboard
o.clipboard = "unnamedplus"
-- Indent Settings
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2
o.smartindent = true
-- Russian keymap
o.langmap =
  "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
