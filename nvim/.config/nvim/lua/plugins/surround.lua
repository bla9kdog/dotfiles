return {
	"kylechui/nvim-surround",
	version = "*",
	event = "VeryLazy",
	config = function()
		local keymap = vim.cmd
		keymap('nmap "" ysiw"')
		keymap("nmap '' ysiw'")
		keymap("nmap (( ysiw(")
		keymap("nmap {{ ysiw{")
		keymap("nmap [[ ysiw[")
		require("nvim-surround").setup()
	end,
}
