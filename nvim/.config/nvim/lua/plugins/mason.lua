return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim"
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        mason.setup({
            ui = {
                border = 'rounded',
                width = 0.5,
                height = 0.5,
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            ensure_installed = {
                "tsserver",
                "html",
                "cssls",
                "tailwindcss",
                "lua_ls",
                "clangd",
                "marksman",
                "emmet_ls",
                "pyright",
            },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = true, -- not the same as ensure_installed
        })
    end,
}
