local keymap = require('lib.utils').keymap

keymap('n', '<C-_>', '<Plug>NERDCommenterToggle')
keymap('v', '<C-_>', '<Plug>NERDCommenterToggle<CR>gv')
