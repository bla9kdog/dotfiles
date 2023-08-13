vim.opt.list = true

-- Indent line colors
vim.cmd [[highlight IndentBlanklineIndent guifg=#333333 gui=nocombine]]
vim.cmd [[highlight IndentSpaceIndent guifg=#333333 gui=nocombine]]

require("indent_blankline").setup {
    show_end_of_line = true,
    show_trailing_blankline_indent = false,
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent",
    },
    space_char_highlight_list = {
        "IndentSpaceIndent",
    }
}
