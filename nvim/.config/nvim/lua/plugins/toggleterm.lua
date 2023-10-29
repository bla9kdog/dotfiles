local keymap = require("utils").keymap
keymap("n", "<C-t>", "<cmd>ToggleTerm<CR>")
keymap("t", "<C-t>", "<cmd>wincmd q<CR>")

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

vim.cmd("autocmd! TermOpen term://*toggleterm* lua set_terminal_keymaps()")

return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			direction = "horizontal",
			size = 12,
			autochdir = true,
			shading_factor = 1,
			winbar = {
				enabled = false,
			},
			persist_mode = false,
			start_in_insert = true,
			hide_numbers = true,
		},
	},
}
