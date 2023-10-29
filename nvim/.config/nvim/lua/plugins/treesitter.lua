return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",
        dependencies = {
            "windwp/nvim-ts-autotag",
        },
        config = function()
            local treesitter = require("nvim-treesitter.configs")
            treesitter.setup({ -- enable syntax highlighting
                highlight = {
                    enable = true,
                },
                indent = { enable = true },
                autotag = {
                    enable = true,
                },
                ensure_installed = {
                    "json",
                    "javascript",
                    "typescript",
                    "html",
                    "css",
                    "c",
                    "cpp",
                    "tsx",
                    "yaml",
                    "html",
                    "css",
                    "prisma",
                    "markdown",
                    "markdown_inline",
                    "svelte",
                    "graphql",
                    "bash",
                    "lua",
                    "vim",
                    "vimdoc",
                    "gitignore",
                    "query",
                },
            })
        end,
    },
}
