return {
	"nvimtools/none-ls.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"jay-babu/mason-null-ls.nvim",
	},
	config = function()
		local mason_null_ls = require("mason-null-ls")

		local null_ls = require("null-ls")

		local null_ls_utils = require("null-ls.utils")

		mason_null_ls.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"black",
				"pylint",
				"eslint_d",
			},
		})

		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		null_ls.setup({
			root_dir = null_ls_utils.root_pattern(".null-ls-root", "Makefile", ".git", "package.json"),
			sources = {
				formatting.prettier.with({
					extra_args = function(params)
						return params.options
							and params.options.tabSize
							and { "--single-quote", "true", "--tab-width", params.options.tabSize }
					end,
				}),
				formatting.stylua,
				formatting.isort,
				formatting.black,
				diagnostics.pylint,
				diagnostics.eslint_d.with({ -- js/ts linter
					condition = function(utils)
						return utils.root_has_file({ ".eslintrc.js", ".eslintrc.cjs" }) -- only enable if root has .eslintrc.js or .eslintrc.cjs
					end,
				}),
			},

			-- Format on save config
			on_attach = function(current_client, bufnr)
				if current_client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								filter = function(client)
									return client.name == "null-ls"
								end,
								bufnr = bufnr,
							})
						end,
					})
				end
			end,
		})
	end,
}
