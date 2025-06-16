return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        indent = {
            char = "▏", -- Символ для линии отступа
            tab_char = "▏",
        },
        scope = { -- for functions
            enabled = false,
            char = "▏",
        },
        exclude = {
            filetypes = { "help", "alpha", "dashboard", "NvimTree", "Trouble", "lazy" },
        },
    },
}
