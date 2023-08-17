local keymap = require('lib.utils').keymap

keymap('n', '<C-n>', '<cmd>Neotree toggle<CR>')

require("neo-tree").setup({
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
            hide_by_name = {
                '.DS_Store',
                'thumbs.db'
            }
        }
    }

})
