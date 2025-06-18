-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set('n', '<leader><Right>', ':bn<CR>', {})
vim.keymap.set('n', '<leader><Left>', ':bp<CR>', {})
vim.keymap.set('n', '<leader>b', ':ls<CR>', {})
vim.keymap.set('n', '<leader>q', ':qall!<CR>', {})
vim.keymap.set('n', '<leader>l', ':Lazy<CR>', {})
vim.keymap.set('i', 'jj', '<ESC><CR>', { desc = "Quick escape" })

-- map('n', '<leader><Right>', ':bn<CR>', {})
-- map('n', '<leader><Left>', ':bp<CR>', {})
-- map('n', '<leader>b', ':ls<CR>', {})
-- map('n', '<leader>q', ':qall!', {})

-- map('n', '<leader>l', ':Lazy<CR>', {})
--Configuracoes lazy.nvim
-- map('n', '<leader>ck', ':edit')

-- local wk = require("which-key")
-- wk.add({
-- 	{ "<leader>c", group = "config" },
-- 	{ "<leader>fe", desc = "Editar Arquivo" },
-- 	{ "<leader>s", group = "src" },
-- })