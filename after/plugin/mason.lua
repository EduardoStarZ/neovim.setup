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
lsp_config.lua_ls.setup {}
lsp_config.html.setup {}
lsp_config.bashls.setup {}
lsp_config.cssls.setup {}
lsp_config.eslint.setup {}
lsp_config.java_language_server.setup {}
lsp_config.cmake.setup {}
lsp_config.clangd.setup {}
lsp_config.pylsp.setup {}
lsp_config.jinja_lsp.setup {}
lsp_config.htmx.setup {}
