local wk = require("which-key")
wk.add({
	{ "<leader>c", group = "config" },
	{ "<leader>cc", function() require("telescope").extensions.file_browser.file_browser({path = vim.fn.stdpath('config') .. "/lua/config"}) end, desc = "Abrir config"},
	{ "<leader>cp", function() require("telescope").extensions.file_browser.file_browser({path = vim.fn.stdpath('config') .. "/lua/plugins"}) end, desc = "Abrir arquivo de plugin" },
	{ "<leader>ff", "<cmd>Telescope file_browser<cr>", desc = "Encontrar arquivo no diretorio atual" },
	{ "<leader>fe", desc = "Editar Arquivo" },
	{ "<leader>s", group = "src" },
	{ "<leader>sm", function() require("telescope.builtin").find_files({cwd = vim.env.HOME .. "/src"}) end, desc = "Selecionar modulo" },
})
