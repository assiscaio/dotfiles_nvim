require("config.core")
require("config.lazy")
require("config.keymaps")

vim.cmd([[colorscheme catppuccin-frappe]])
local vimdir = vim.fn.stdpath("config")
vim.g.vimdir = vimdir
vim.o.smarttab = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.nu = true
