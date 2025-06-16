-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = ' '
vim.o.wrap = false
local vimdir = vim.fn.stdpath("config")
vim.g.vimdir = vimdir
vim.o.smarttab = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.nu = true