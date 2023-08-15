require('catppuccin').setup({
    color_overrides = {
        all = {
            text = '#ffffff'
        },
        mocha = {
            rosewater = '#f5e0dc',
            flamingo = '#f2cdcd',
            pink = '#f5c2e7',
            mauve = '#cba6f7',
            red = '#f38ba8',
            maroon = '#eba0ac',
            peach = '#fab387',
            yellow = '#f9e2af',
            green = '#a6e3a1',
            teal = '#94e2d5',
            sky = '#89dceb',
            sapphire = '#74c7ec',
            blue = '#89b4fa',
            lavender = '#b4befe',
            text = '#ffffff',
            subtext1 = '#bac2de',
            subtext0 = '#a6adc8',
            overlay2 = '#9399b2',
            overlay1 = '#7f849c',
            overlay0 = '#6c7086',
            surface2 = '#585b70',
            surface1 = '#45475a',
            surface0 = '#313244',
            base = '#0a0a0a',
            mantle = '#13151a',
            crust = '#11111b',
        },
    },

    custom_highlights = function(colors)
        return {
            Comment = { fg = colors.flamingo },
            TabLine = { bg = colors.base, fg = colors.surface1 },
            TabLineSel = { bg = colors.mantle },
            TabLineFill = { bg = colors.base },
            CmpBorder = { fg = colors.surface2 },
            Pmenu = { bg = colors.base },
            PmenuSel = { bg = colors.mantle },
            MyCursorLine = { bg = colors.mantle, fg = colors.green },
            FloatBorder = { fg = colors.overlay2 },
            CursorLine = { bg = colors.mantle },
            TelescopeMatching = { fg = colors.green },
            TelescopeSelection = { fg = colors.text, bg = colors.mantle, bold = true },
            TelescopeResultsNormal = { fg = colors.overlay2 },
            IndentBlanklineIndent = { fg = colors.surface0 },
            IndentSpaceIndent = { fg = colors.surface0 },
            IndentBlanklineContextStart = { bg = colors.mantle, style = { 'bold', 'italic' } },
            SignColumn = { bg = colors.base },
            BufferSign = { bg = colors.mantle, fg = colors.mantle },
            BufferSignRight = { bg = colors.mantle, fg = colors.mantle },
            BufferCurrentSign = { bg = colors.mantle, fg = colors.mantle },
            BufferCurrentSignRight = { bg = colors.mantle, fg = colors.mantle },
            BufferInactiveSign = { bg = colors.base, fg = colors.base },
            BufferInactiveSignRight = { bg = colors.base, fg = colors.base },
        }
    end
})

vim.cmd.colorscheme 'catppuccin-mocha'
