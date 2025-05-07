require "nvchad.options"

vim.g.netrw_banner = 0

local o = vim.o
o.whichwrap = ""

o.termguicolors = true
o.mouse = ""
o.showmode = false

o.backup = false
o.swapfile = false
o.undofile = false
-- o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.updatetime = 4000
o.timeoutlen = 1000

o.wrap = false
o.ignorecase = true
-- учитывать регистр если есть заглавные
o.smartcase = true
o.shell = "pwsh"
o.winborder = 'rounded'

-- o.spell = true
-- en_us
-- o.spelllang = 'ru'
-- o.scrolloff = 8

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
