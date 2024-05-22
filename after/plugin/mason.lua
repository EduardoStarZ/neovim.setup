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

mason_lsp_config.setup({
		ensure_installed = {
				"lua_ls",
				"rust_analyzer",
				"eslint",
				"pylsp",
				"cssls",
				"htmx",
				"jinja_lsp",
				"html",
				"bashls",
				"java_language_server"
		}
})

require("mason-lspconfig").setup_handlers {
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {}
        end,
        -- Next, you can provide a dedicated handler for specific servers.
        -- For example, a handler override for the `rust_analyzer`:
        -- ["rust_analyzer"] = function ()
        --    require("rust-tools").setup {}
        -- end
}
