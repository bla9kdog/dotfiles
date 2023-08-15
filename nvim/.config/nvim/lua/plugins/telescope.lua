local keymap = require('lib.utils').keymap

-- Keybindings
keymap('n', '<C-f>', '<cmd>Telescope find_files<CR>')
keymap('n', '<A-f>', '<cmd>Telescope live_grep<CR>')
keymap('n', '<A-y>', '<cmd>Telescope buffers<CR>')
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>')
