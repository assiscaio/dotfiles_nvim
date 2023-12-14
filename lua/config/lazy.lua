-- Bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
  	install = { colorscheme = { habamax, gruvbox }},
	checker = { enabled = true },
})

require("symbols-outline").setup()
require("dressing").setup({
  select = {
    get_config = function(opts)
      if opts.kind == 'codeaction' then
        return {
          backend = 'nui',
          nui = {
            relative = 'cursor',
            max_width = 40,
          }
        }
      end
    end
  }
})
require('lualine').setup()
require("telescope").setup({
	extensions = {
		workspaces = {
			keep_insert = true,
		}
	}
})
require('mini.animate').setup()
require('mini.surround').setup()

--telescope.load_extensions("workspaces")
-- require("telescope").setup {
-- 	extensions = {
-- 		["ui-select"] = {
-- 			require("telescope.themes").get_dropdown {}
-- 		}
-- 	}
-- }
-- require("telescope").load_extension("ui-select")
