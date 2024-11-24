local wk = require("which-key")
wk.add({
	{ "<leader>c", group = "config" },
	{ "<leader>cc", function() require("telescope.builtin").find_files({cwd = vim.fn.stdpath('config') .. "/lua/config"}) end, desc = "Arquivo Init" },
	{ "<leader>cp", function() require("telespope.builtin").find_files({cwd = vim.fn.stdpath('config') .. "/lua/plugins"}) end, desc = "Plugin" },
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Encontrar arquivo no diretorio atual" },
	{ "<leader>fe", desc = "Editar Arquivo" },
	{ "<leader>s", group = "src" },
	{ "<leader>sm", function() require("telescope.builtin").find_files({cwd = vim.env.HOME .. "/src"}) end, desc = "Selecionar modulo" },
})
