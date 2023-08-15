local cmp = require('cmp')
local luasnip = require('luasnip')

vim.api.nvim_set_hl(0, 'MyCursorLine', { fg = '#a6e3a1', bg = '#13151a' })
vim.api.nvim_set_hl(0, 'CmpItemAbbr', { fg = '#ffffff', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { fg = '#94e2d5', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { fg = '#a6e3a1', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CmpItemKindText', { fg = '#f9e2af', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { fg = '#f38ba8', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CmpItemKindSnippet', { fg = '#a6e3a1', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { fg = '#89b4fa', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { fg = '#f5c2e7', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CmpItemKindClass', { fg = '#94e2d5', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CmpItemKindConstructor', { fg = '#999999', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { fg = '#c678dd', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CmpItemKindField', { fg = '#89dceb', bg = 'NONE' })

-- VSCode-style snippets
require('luasnip.loaders.from_vscode').lazy_load()

-- Icons
local icons = {
    Text = '',
    Variable = '󰬈',
    Snippet = '󱃖',
    Function = '󰊕',
    Keyword = '',
    Class = '󰠱',
    Constructor = '󰒓',
    Method = '󰂔',
    Module = '󰕳',
    Field = '',
    Reference = '',
}

-- Tab Fix
local has_words_before = function()
    local cursor = vim.api.nvim_win_get_cursor(0)
    return (vim.api.nvim_buf_get_lines(0, cursor[1] - 1, cursor[1], true)[1] or ''):sub(cursor[2], cursor[2]):match('%s')
end

cmp.setup({
    formatting = {
        format = function(entry, vim_item)
            vim_item.kind = (icons[vim_item.kind] or '') .. ' ' .. vim_item.kind
            vim_item.menu = ({
                luasnip = '[SNIP]',
                nvim_lsp = '[LSP]',
                look = '[DIC]',
                buffer = '[BUF]',
            })[entry.source.name]
            return vim_item
        end
    },

    mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.scroll_docs(-4),
        ['<C-j>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { 'i', 's' }),

        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),

    window = {
        completion = cmp.config.window.bordered {
            winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:MyCursorLine,Search:None',
        },
        documentation = cmp.config.window.bordered {
            winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None',
        },
    },

    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },

    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
        { name = 'path' },
    })
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        {
            name = 'cmdline',
            option = {
                ignore_cmds = { 'Man', '!' }
            }
        }
    })
})
