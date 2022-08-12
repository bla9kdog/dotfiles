
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

    -- Polyglot
    use('sheerun/vim-polyglot')

    -- Emmet
    use('mattn/emmet-vim')

    -- Highlight enclosing tags
    use('valloric/MatchTagAlways')

    -- Insert/delete brackets, parenthesis, quotes...
    use('jiangmiao/auto-pairs')

    -- Toggling line numbers
    use('myusuf3/numbers.vim')

    -- Code commenting
    use({
        'preservim/nerdcommenter',
        config = function()
          require('plugins.nerdcommenter')
        end,
    })

    -- Navigate windows easily
    use({
        't9md/vim-choosewin',
        config = function()
          require('plugins.vim-choosewin')
        end,
    })

    -- COC (coc-html coc-css coc-tsserver coc-prettier coc-emmet coc-eslint coc-pyright coc-json)
    use({
        'neoclide/coc.nvim',
        branch = 'release',
        config = function()
          require('plugins.coc')
        end,
    })

    -- Colorscheme
    use { 'catppuccin/nvim', as = 'catppuccin' }

    -- Color highlighting
    use({
        'rrethy/vim-hexokinase',
        config = function()
          require('plugins.hexokinase')
        end,
      })

    -- Floating terminal
    use({
        'voldikss/vim-floaterm',
        config = function()
          require('plugins.vim-floaterm')
        end,
      })

    -- File browser
    use({
        'kyazdani42/nvim-tree.lua',
        config = function()
          require('plugins.nvim-tree')
        end,
    })

    -- Status line
    use({
        'tamton-aquib/staline.nvim',
        config = function()
          require('plugins.staline')
        end,
    })
end)
