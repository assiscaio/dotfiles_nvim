-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set('n', '<leader><Right>', ':bn<CR>', {})
vim.keymap.set('n', '<leader><Left>', ':bp<CR>', {})
vim.keymap.set('n', '<leader><p>', ':bp<CR>', {})
vim.keymap.set('n', '<leader><n>', ':bp<CR>', {})
vim.keymap.set('n', '<leader>b', ':ls<CR>', {})
vim.keymap.set('n', '<leader>q', ':qall!<CR>', {})
vim.keymap.set('n', '<leader>l', ':Lazy<CR>', {})
vim.keymap.set('i', 'jj', '<ESC><CR>', { desc = "Quick escape" })

vim.keymap.set('n', '<TAB>', ':bn<CR>', { desc = "Next buffer" })
vim.keymap.set('n', '<S-TAB>', ':bp<CR>', { desc = "Next buffer" })
-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", {desc = "Open Directory"})
vim.keymap.set("n", '<leader>-', "<CMD>Oil C:/Users/DA8K/AppData/Local/nvim<CR>", {desc = "Abrir configurações"})

--Configuracoes lazy.nvim
-- map('n', '<leader>ck', ':edit')

-- local wk = require("which-key")
-- wk.add({
-- 	{ "<leader>c", group = "config" },
-- 	{ "<leader>fe", desc = "Editar Arquivo" },
-- 	{ "<leader>s", group = "src" },
-- })
