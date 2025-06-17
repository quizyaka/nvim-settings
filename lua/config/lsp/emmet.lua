return {
    config = function(lspconfig, capabilities)
        lspconfig.emmet_language_server.setup({
            capabilities = capabilities,
            filetypes = {
                "html", "css", "scss", "sass",
                "javascript", "javascriptreact",
                "typescript", "typescriptreact",
                "vue", "php", "blade"
            },
            init_options = {
                html = {
                    options = {
                        ["bem.enabled"] = true,
                    },
                },
            }
        })
    end
}
