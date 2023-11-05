local keymap = require("utils").keymap

keymap("n", "<C-n>", "<cmd>Neotree toggle<CR>")

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		close_if_last_window = true,
		enable_git_status = true,
		window = {
			width = 30,
		},
		filesystem = {
			follow_current_file = { enabled = true },
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				never_show = {
					".DS_Store",
					"thumbs.db",
				},
			},
		},
	},
}
