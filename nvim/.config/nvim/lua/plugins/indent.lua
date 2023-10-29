return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
        local indent = require("ibl")

        indent.setup({
            indent = {
                tab_char = '▎',
            },
            whitespace = { remove_blankline_trail = true },
            scope = {
                show_end = true,
                show_start = false,
            },
            exclude = {
                filetypes = { 'terminal', 'mason', 'help', 'neo-tree' },
                buftypes = { 'terminal', 'quickfix', 'nofile', 'prompt' },
            },

        })
    end,
}
