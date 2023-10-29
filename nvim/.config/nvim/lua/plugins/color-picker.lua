local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)
vim.keymap.set("n", "<C-A-c>", "<cmd>ConvertHEXandRGB<cr>", opts)

return {
	"ziontee113/color-picker.nvim",
	config = function()
		local color_picker = require("color-picker")
		color_picker.setup({
			["icons"] = { "ﱢ", "" },
			["border"] = "rounded", -- none | single | double | rounded | solid | shadow
			["keymap"] = {
				["U"] = "<Plug>ColorPickerSlider5Decrease",
				["O"] = "<Plug>ColorPickerSlider5Increase",
			},
			["background_highlight_group"] = "Normal",
			["border_highlight_group"] = "FloatBorder",
			["text_highlight_group"] = "Normal",
		})
	end,
}
