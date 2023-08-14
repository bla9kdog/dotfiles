----------------------------------------------------------------
-- Plugins
----------------------------------------------------------------

-- Helpers
local cmd = vim.cmd
local execute = vim.api.nvim_command
local fn = vim.fn

return require('packer').startup(function(use)
    -- Package manager
    use('wbthomason/packer.nvim')

    -- Telescope
    use({
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'kyazdani42/nvim-web-devicons' },
        },
        config = function()
            require('plugins.telescope')
        end,
    })

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    -- Highlight enclosing tags
    use('valloric/MatchTagAlways')

    -- Auto Pairs
    use({
        'windwp/nvim-autopairs',
        config = function()
            require('plugins.autopairs')
        end,
    })

    -- Toggling line numbers
    use('myusuf3/numbers.vim')

    -- Indent
    use({
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require('plugins.indent')
        end,
    })

    -- Code commenting
    use({
        'numToStr/Comment.nvim',
        config = function()
            require('plugins.comment')
        end,
    })

    -- Navigate windows easily
    use({
        't9md/vim-choosewin',
        config = function()
            require('plugins.vim-choosewin')
        end,
    })

    -- Color highlighting
    use({
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('plugins.colorizer')
        end,
    })

    -- Floating terminal
    use({
        'numToStr/FTerm.nvim',
        config = function()
            require('plugins.fterm')
        end,
    })

    -- File browser
    use({
        'kyazdani42/nvim-tree.lua',
        config = function()
            require('plugins.nvim-tree')
        end,
    })

    --Tabline
    use({
        'romgrk/barbar.nvim',
        config = function()
            require('plugins.tabline')
        end,
    })

    -- Status line
    use({
        'nvim-lualine/lualine.nvim',
        config = function()
            require('plugins.lualine')
        end,
    })

    -- Git
    use({
        'lewis6991/gitsigns.nvim',
        config = function()
            require('plugins.git')
        end,
    })

    -- LSP
    use({
        'williamboman/mason.nvim',
        config = function()
            require('plugins.lsp')
        end,
    })

    use({
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('plugins.lsp')
        end,
    })

    use({
        'neovim/nvim-lspconfig',
        config = function()
            require('plugins.lsp')
        end,
    })

    -- Autocomplete, snippets...
    use({
        'hrsh7th/nvim-cmp',
        config = function()
            require('plugins.cmp')
        end,
    })

    use({
        'hrsh7th/cmp-nvim-lsp',
        config = function()
            require('plugins.cmp')
        end,
    })

    use({
        'L3MON4D3/LuaSnip',
        config = function()
            require('plugins.cmp')
        end,
    })

    use({
        'saadparwaiz1/cmp_luasnip',
        config = function()
            require('plugins.cmp')
        end,
    })

    use({
        'hrsh7th/cmp-buffer',
        config = function()
            require('plugins.cmp')
        end,
    })

    use({
        'hrsh7th/cmp-path',
        config = function()
            require('plugins.cmp')
        end,
    })

    use({
        'hrsh7th/cmp-cmdline',
        config = function()
            require('plugins.cmp')
        end,
    })

    use('rafamadriz/friendly-snippets')

    -- Format on save

    use({
        'lukas-reineke/lsp-format.nvim',
        config = function()
            require('plugins.lsp')
        end,
    })
end)
