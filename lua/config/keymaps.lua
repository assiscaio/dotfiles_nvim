-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set('n', '<leader><Right>', ':bn<CR>', {})
vim.keymap.set('n', '<leader><Left>', ':bp<CR>', {})
vim.keymap.set('n', '<leader>b', ':ls<CR>', {})
vim.keymap.set('n', '<leader>q', ':qall!<CR>', {})
vim.keymap.set('n', '<leader>l', ':Lazy<CR>', {})
vim.keymap.set('i', 'jj', '<ESC><CR>', { desc = "Quick escape" })

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", {desc = "Open Directory"})
vim.keymap.set("n", '<leader>-', "<CMD>Oil C:/Users/DA8K/AppData/Local/nvim<CR>", {desc = "Abrir configurações"})

-- Git
vim.keymap.set("n", "<leader>gp", "<CMD>Git preview_hunk<CR>", {desc = "Preview git hunk"})
vim.keymap.set("n", "<leader>gbl", "<CMD>Git blame_line<CR>", {desc = "Toggle blame line"})
vim.keymap.set("n", "<leader>gb", "<CMD>Git blame<CR>", {desc = "Toggle blame"})

--Configuracoes lazy.nvim
-- map('n', '<leader>ck', ':edit')

-- local wk = require("which-key")
-- wk.add({
-- 	{ "<leader>c", group = "config" },
-- 	{ "<leader>fe", desc = "Editar Arquivo" },
-- 	{ "<leader>s", group = "src" },
-- })
