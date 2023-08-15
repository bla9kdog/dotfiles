local keymap = require('lib.utils').keymap

-- Keybindings
keymap('n', '<C-f>', '<cmd>Telescope find_files<CR>')
keymap('n', '<A-f>', '<cmd>Telescope live_grep<CR>')
keymap('n', '<A-y>', '<cmd>Telescope buffers<CR>')
keymap('n', '<C-h>', '<cmd>Telescope help_tags<CR>')
keymap('n', '<C-j>', 'require("telescope.builtin").prev_item')
keymap('n', '<C-k>', 'require("telescope.builtin").next_item')

local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ['<esc>'] = actions.close,
                ['<C-j>'] = actions.move_selection_next,
                ['<C-k>'] = actions.move_selection_previous,
            },
        },
    },
    pickers = {
        find_files = {
            theme = 'dropdown',
        },
        live_grep = {
            theme = 'dropdown',
        },
        buffers = {
            theme = 'dropdown',
        },
        help_tags = {
            theme = 'dropdown',
        },
    }
}
