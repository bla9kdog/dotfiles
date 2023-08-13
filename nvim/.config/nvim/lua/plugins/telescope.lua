local keymap = require('lib.utils').keymap

-- Keybindings
keymap('n', '<C-f>', ':Telescope find_files<CR>')
keymap('n', '<A-f>', ':Telescope live_grep<CR>')
keymap('n', '<A-y>', ':Telescope buffers<CR>')
keymap('n', '<leader>fh', ':Telescope help_tags<CR>')
