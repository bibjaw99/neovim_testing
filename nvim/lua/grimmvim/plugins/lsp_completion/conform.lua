return {
	"stevearc/conform.nvim",
	event = { "LspAttach" },
	opts = {
		formatters_by_ft = {
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			svelte = { "prettier" },
			css = { "prettier" },
			html = { "prettier" },
			json = { "prettier" },
			yaml = { "prettier" },
			markdown = { "prettier" },
			graphql = { "prettier" },
			liquid = { "prettier" },
			lua = { "stylua" },
			python = { "isort", "black" },
		},
		format_on_save = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 1000,
		},
	},
	config = function(_, opts)
		local conform = require("conform")
		conform.setup(opts)
		vim.keymap.set({ "n", "v" }, "<leader>Fm", function()
			conform.format({
				lsp_fallback = true,
				timeout_ms = 1000,
			})
		end, { desc = "Format Manually" })
	end,
}
