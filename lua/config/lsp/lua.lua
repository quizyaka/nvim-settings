local libraries = {
    "D:/lua-types/libgmod",
}

return {
    config = function(lspconfig, capabilities)
        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            root_dir = function()
                return vim.fn.getcwd()
            end,
            settings = {
                Lua = {
                    runtime = {
                        nonstandardSymbol = {
                            "//",
                            "&&",
                            "||",
                            "!=",
                            "!",
                            "continue",
                            "/**/"
                        },
                    },
                    diagnostics = {
                        globals = { "vim" }
                    },
                    workspace = {
                        library = libraries,
                        checkThirdParty = false,
                    },
                    telemetry = { enable = false },
                }
            }
        })
    end
}
