-- Mason Setup
require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'marksman', 'clangd', 'cssls', 'emmet_language_server', 'html', 'tsserver', 'pyright',
        'vimls' }
})

-- LSP Format
require('lsp-format').setup {}

-- Keybindings
local on_attach = function(client)
    require('lsp-format').on_attach(client)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Pmenu Borders
local handlers = {
    ['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'single' }),
    ['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = 'single' }),
}

-- LSP Config
require('lspconfig').lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    handlers = handlers,
}

require('lspconfig').marksman.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    handlers = handlers,
}

require('lspconfig').clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    handlers = handlers,
}
require('lspconfig').cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    handlers = handlers,
}
require('lspconfig').emmet_language_server.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    handlers = handlers,
}
require('lspconfig').html.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    handlers = handlers,
}
require('lspconfig').tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    handlers = handlers,
}
require('lspconfig').pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    handlers = handlers,
}
require('lspconfig').vimls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    handlers = handlers,
}
