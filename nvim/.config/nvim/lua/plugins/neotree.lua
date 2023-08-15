local keymap = require('lib.utils').keymap

keymap('n', '<C-n>', '<cmd>Neotree toggle<CR>')

require("neo-tree").setup({
    close_if_last_window = true,
    enable_git_status = true,
    window = {
        width = 35,
    },
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            never_show = {
                '.DS_Store',
                'thumbs.db'
            }
        }
    }

})
