local tscope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', tscope.find_files, {})
--vim.keymap.set('n', '<leader>fg', tscope.live_grep, {})
vim.keymap.set('n', '<leader>fb', tscope.buffers, {})
vim.keymap.set('n', '<leader>fh', tscope.help_tags, {})
vim.keymap.set('n', '<leader>fg', tscope.git_files, {})

-- atalhos
vim.keymap.set('n', '<C-F7>',':e stdpath("config")<CR>', {})

-- buffers
--vim.keymap.set('n', '<leader>bn', ':bn<CR>', {})
vim.keymap.set('n', '<leader><Right>', ':bn<CR>', {})
vim.keymap.set('n', '<leader><Left>', ':bp<CR>', {})
vim.keymap.set('n', '<leader>b', ':ls<CR>', {})
