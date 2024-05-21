mason = require("mason")
mason_lsp_config = require("mason-lspconfig")
lsp_config = require("lspconfig")

mason.setup({
ui = {
	icons = {
		package_installed = "✓",
		package_pending = "➜",
		package_uninstalled = "✗"
	}
}
})

mason_lsp_config.setup()
lsp_config.rust_analyzer.setup {}
