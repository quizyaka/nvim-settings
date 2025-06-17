local lsp = require("config.lsp")

return {
    config = function(lspconfig)
        lspconfig.rust_analyzer.setup({
            cmd = { lsp.getPath("rust") },
            settings = {
                ["rust-analyzer"] = {
                    diagnostics = {
                        enable = true,
                        experimental = { enable = true },
                    },
                    cargo = {
                        allFeatures = true,
                    },
                    checkOnSave = {
                        command = "clippy",
                    },
                }
            }
        })
    end
}
