local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

-- Sort automatically by...
map('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

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
    },
    sidebar_filetypes = {
        ['neo-tree'] = { event = 'BufWipeout' }
    }
}
