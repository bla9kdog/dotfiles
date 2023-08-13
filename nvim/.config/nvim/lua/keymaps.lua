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

-- Resize split
keymap('n', '<Leader>hd', ':resize -4<CR>')
keymap('n', '<Leader>hi', ':resize +4<CR>')
keymap('n', '<Leader>vd', ':vertical resize -4<CR>')
keymap('n', '<Leader>vi', ':vertical resize +4<CR>')

