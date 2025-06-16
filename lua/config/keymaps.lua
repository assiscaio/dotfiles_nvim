-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set('n', '<leader><Right>', ':bn<CR>', {})
vim.keymap.set('n', '<leader><Left>', ':bp<CR>', {})
vim.keymap.set('n', '<leader>b', ':ls<CR>', {})
vim.keymap.set('n', '<leader>q', ':qall!' {})

local wk = require("which-key")
wk.add({
	{ "<leader>c", group = "config" },
	{ "<leader>fe", desc = "Editar Arquivo" },
	{ "<leader>s", group = "src" },
})