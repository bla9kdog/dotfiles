-- Helpers
local g = vim.g
local o = vim.o

----------------------------------------------------------------
-- Keymaps
----------------------------------------------------------------

local keymap = require('lib.utils').keymap

-- Map leader to space
g.mapleader = ' '
g.maplocalleader = ' '

-- Switch tabs
keymap('n', '<C-j>', ':tabprevious<CR>')
keymap('n', '<C-k>', ':tabnext<CR>')

-- Popup menu
keymap('i', '<Tab>', 'coc#pum#visible() ? coc#pum#next(1) : "\\<Tab>"', { expr = true })
keymap('i', '<S-Tab>', 'coc#pum#visible() ? coc#pum#prev(1) : "\\<S-Tab>"', { expr = true })
keymap('i', '<CR>', 'coc#pum#visible() ? coc#pum#confirm() : "\\<CR>"', { expr = true })

-- Resize split
keymap('n', '<Leader>hd', ':resize -4<CR>')
keymap('n', '<Leader>hi', ':resize +4<CR>')
keymap('n', '<Leader>vd', ':vertical resize -4<CR>')
keymap('n', '<Leader>vi', ':vertical resize +4<CR>')

