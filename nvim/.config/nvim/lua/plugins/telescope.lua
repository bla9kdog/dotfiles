local keymap = require("utils").keymap

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = function()
		return {
			{ "<C-f>", require("telescope.builtin").find_files },
			{ "<A-f>", require("telescope.builtin").live_grep },
			{ "<A-y>", require("telescope.builtin").buffers },
			{ "<A-/>", require("telescope.builtin").help_tags },
			{ "<leader>lr", require("telescope.builtin").lsp_references },
			{ "<leader>nt", require("telescope.builtin").notify },
		}
	end,
	config = function()
		local actions = require("telescope.actions")
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				hidden = true,
				mappings = {
					i = {
						["<esc>"] = actions.close,
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
					},
				},
				file_ignore_patterns = {
					"node_modules",
					".cache",
					".local",
					".Trash",
					".npm",
					"Library",
					".DS_Store",
					".git",
				},
			},
			pickers = {
				find_files = {
					path_display = { "tail" },
					theme = "dropdown",
					hidden = true,
				},
				live_grep = {
					theme = "dropdown",
				},
				buffers = {
					theme = "dropdown",
				},
				help_tags = {
					theme = "dropdown",
				},
			},
		})
	end,
}
