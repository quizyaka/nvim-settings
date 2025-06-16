local conform = require("conform")

conform.setup({
    format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
    },

    formatters = {
        prettier = {
            prepend_args = {
                "--tab-width", "4",
                "--semi", "true",
                "--single-quote", "false",
            },
        },
    },

    formatters_by_ft = {
        lua = { "stylua" },
        -- python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
    },
})
