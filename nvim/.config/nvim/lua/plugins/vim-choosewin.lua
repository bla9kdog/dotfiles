local keymap = require('lib.utils').keymap

keymap('n', '-', '<Plug>(choosewin)')
vim.g.choosewin_overlay_enable = 0
