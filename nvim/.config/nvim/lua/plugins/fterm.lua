local keymap = require('lib.utils').keymap

require'FTerm'.setup({
    border = 'single',
    dimensions  = {
        height = 0.8,
        width = 0.8,
    },
})

-- Keybindings
keymap('n', '<C-t>', '<CMD>lua require("FTerm").toggle()<CR>')
keymap('t', '<C-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
