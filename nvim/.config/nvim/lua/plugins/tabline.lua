local opts = { noremap = true, silent = true }
local keymap = require('lib.utils').keymap

-- Move to previous/next
keymap('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
keymap('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
keymap('n', '<leader>,', '<Cmd>BufferMovePrevious<CR>', opts)
keymap('n', '<leader>.', '<Cmd>BufferMoveNext<CR>', opts)
-- Pin/unpin buffer
keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

-- Sort automatically by...
keymap('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
keymap('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
keymap('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
keymap('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

require('barbar').setup {
    auto_hide = false,
    icons = {
        -- Configure the base icons on the bufferline.
        -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
        buffer_index = false,
        buffer_number = false,
        button = '',
        -- Enables / disables diagnostic symbols
        diagnostics = {
            [vim.diagnostic.severity.ERROR] = { enabled = true, icon = 'ﬀ' },
            [vim.diagnostic.severity.WARN] = { enabled = false },
            [vim.diagnostic.severity.INFO] = { enabled = false },
            [vim.diagnostic.severity.HINT] = { enabled = true },
        },
        gitsigns = {
            added = { enabled = true, icon = '+' },
            changed = { enabled = true, icon = '~' },
            deleted = { enabled = true, icon = '-' },
        },
        filetype = {
            -- Sets the icon's highlight group.
            -- If false, will use nvim-web-devicons colors
            custom_colors = false,

            -- Requires `nvim-web-devicons` if `true`
            enabled = true,
        },
        separator = { left = '', right = '' },
        separator_at_the_end = false,
        preset = 'default',
    },
    maximum_padding = 2,
    minimum_padding = 2,
    -- sidebar_filetypes = {
    --     ['neo-tree'] = { event = 'BufWipeout' }
    -- }
}
