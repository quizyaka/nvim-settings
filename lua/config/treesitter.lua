require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "lua", "html", "css", "javascript", "typescript", "tsx", "json", "python"
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
    }
})
