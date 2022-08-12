local no_unicode_modes = {
    n = "NORMAL ",
    i = "INSERT ",
    c = "COMMAND ",
    v = "VISUAL ",
    t = "TERMINAL "
}

require'staline'.setup{
    mode_icons = no_unicode_modes,
	sections = {
		left = {
			'- ', '-mode', 'left_sep_double',
			'file_name', '  ', 'branch'
		},
		mid  = {'lsp'},
		right= {
			'cool_symbol', '  ',
			vim.bo.fileencoding:upper(), 'right_sep_double', '-line_column'
		}
	},
	defaults = {
		left_separator = "",
		right_separator = "",
		bg = "#292930",
		full_path = false,
		branch_symbol = " "
	},
	mode_colors = {
		n = "#b4befe",
		i = "#a6e3a1",
		ic= "#fab387",
		c = "#89b4fa"
	}
}

require('stabline').setup {
	style = "slant",
	bg = "#b4befe",
	fg = "#1f1f24",
    stab_right = "",
    font_active = "none",
}
