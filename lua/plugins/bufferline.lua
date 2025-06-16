return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
        highlights = {
            fill = { bg = "NONE" },
            background = { bg = "NONE" },
        },
    },
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",
                diagnostics = "nvim_lsp",
                always_show_bufferline = true,
                separator_style = "thin",

            },
        })
        local map = vim.keymap.set

        map("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
        map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
        map("n", "<leader>x", "<cmd>BufferLinePickClose<CR>", { desc = "Close buffer" })
        map("n", "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", { desc = "Close other buffers" })
    end,
}
-- return {}
