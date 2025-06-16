local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local libraries = {
    "D:/lua-types/libgmod",
}

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

lspconfig.emmet_language_server.setup({
    capabilities = capabilities,
    filetypes = {
        "html", "css", "scss", "sass",
        "javascript", "javascriptreact",
        "typescript", "typescriptreact",
        "vue", "php", "blade"
    },
    init_options = {
        --- включаем расширения
        html = {
            options = {
                ["bem.enabled"] = true,
            },
        },
    }
})
