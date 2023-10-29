vim.keymap.set("n", "<A-d>", function() require("trouble").toggle() end)

return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
