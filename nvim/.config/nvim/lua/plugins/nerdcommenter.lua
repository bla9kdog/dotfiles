local keymap = require('lib.utils').keymap

-- Keybindings
keymap('n', '<C-_>', '<Plug>NERDCommenterToggle')
keymap('v', '<C-_>', '<Plug>NERDCommenterToggle<CR>gv')
