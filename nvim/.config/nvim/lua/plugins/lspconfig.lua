return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local keymap = vim.keymap
        local opts = { noremap = true, silent = true }
        require("lsp-format").setup {}

        local on_attach = function(client, bufnr)
            require("lsp-format").on_attach(client)
            opts.buffer = bufnr

            keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
            keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
            keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
            keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)
            keymap.set("n", "K", vim.lsp.buf.hover, opts)
        end

        local capabilities = cmp_nvim_lsp.default_capabilities()

        -- Pmenu Borders
        local handlers = {
            ['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'single' }),
            ['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = 'single' }),
        }
        -- LSP Config
        lspconfig["lua_ls"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            handlers = handlers,
            settings = {
                Lua = {
                    diagnostics = { globals = { 'vim' } }
                }
            }
        })

        lspconfig["marksman"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            handlers = handlers,
        })

        lspconfig["clangd"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            handlers = handlers,
        })

        lspconfig["cssls"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            handlers = handlers,
        })

        lspconfig["emmet_ls"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            handlers = handlers,
        })

        lspconfig["tsserver"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            handlers = handlers,
        })

        lspconfig["pyright"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            handlers = handlers,
        })

        lspconfig["html"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            handlers = handlers,
        })

        lspconfig["vimls"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            handlers = handlers,
        })
    end,
}
