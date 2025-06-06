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
				"cssls",
				"ts_ls",
				"html",
		}
})

require("mason-lspconfig").setup {
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

lsp_config.html.setup({
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
})
