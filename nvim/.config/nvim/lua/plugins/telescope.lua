local keymap = require('utils').keymap

-- Keybindings
keymap('n', '<C-f>', '<cmd>Telescope find_files<CR>')
keymap('n', '<A-f>', '<cmd>Telescope live_grep<CR>')
keymap('n', '<A-y>', '<cmd>Telescope buffers<CR>')
keymap('n', '<A-/>', '<cmd>Telescope help_tags<CR>')
keymap('n', '<leader>lr', '<cmd>Telescope lsp_references<CR>')
keymap('n', '<leader>nt', '<cmd>Telescope notify<CR>')
-- keymap('n', '<C-j>', 'require("telescope.builtin").prev_item')
-- keymap('n', '<C-k>', 'require("telescope.builtin").next_item')

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local actions = require("telescope.actions")
        local telescope = require("telescope")
        telescope.setup({
            defaults = {
                hidden = true,
                mappings = {
                    i = {
                        ['<esc>'] = actions.close,
                        ['<C-j>'] = actions.move_selection_next,
                        ['<C-k>'] = actions.move_selection_previous,
                    },
                },
                file_ignore_patterns = { 'node_modules', '.cache', '.local', '.Trash', '.npm', 'Library', '.DS_Store',
                    '.git' },
            },
            pickers = {
                find_files = {
                    path_display = { 'tail' },
                    theme = 'dropdown',
                    hidden = true,
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

        })
    end,
}
