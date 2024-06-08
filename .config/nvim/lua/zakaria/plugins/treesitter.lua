return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufWritePost", "BufNewFile" },
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	--lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the cmdline
	config = function()
		-- import nvim-treesitter plugin
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },
			ensure_installed = {
				"bash",
				"c",
				"go",
				"diff",
				"html",
				"javascript",
				"jsdoc",
				"json",
				"jsonc",
				"lua",
				"luadoc",
				"luap",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"regex",
				"toml",
				"tsx",
				"typescript",
				"gitignore",
				"graphql",
				"css",
				"vim",
				"vimdoc",
				"xml",
				"yaml",
				"php",
				"rust",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
--textobjects = {
--  move = {
--    enable = true,
--    goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer" },
--    goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer" },
--    goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer" },
--    goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer" },
--  },
--},
