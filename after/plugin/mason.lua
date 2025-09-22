mason = require("mason")

mason.setup({
ui = {
	icons = {
		package_installed = "✓",
		package_pending = "➜",
		package_uninstalled = "✗"
	}
}
})

require("mason-lspconfig").setup({
	lazy = true,
})

vim.lsp.config['html'] = {
		capabilities = capabilities,
		init_options = {
				configurationSection = { "html", "css", "javascript", "htmx", "jinja" },
				embeddedLanguages = {
						jinja = true,
						htmx = true,
						css = true,
						javascript = true,
				},
				provideFormatter = true,
		},
}
