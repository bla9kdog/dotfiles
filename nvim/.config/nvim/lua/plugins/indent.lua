vim.opt.list = true

require('indent_blankline').setup {
    show_end_of_line = true,
    show_trailing_blankline_indent = false,
    space_char_blankline = ' ',
    show_current_context = true,
    show_current_context_start = true,
    show_first_indent_level = false,
    buftype_exclude = { 'terminal' },
    char_highlight_list = {
        'IndentBlanklineIndent',
    },
    space_char_highlight_list = {
        'IndentSpaceIndent',
    }
}
