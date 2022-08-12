local keymap = require('lib.utils').keymap

keymap('n', '<C-t>', ':FloatermToggle<CR>')
keymap('t', '<C-t>', '<C-\\><C-n>:FloatermToggle<CR>')
