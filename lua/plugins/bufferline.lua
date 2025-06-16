return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
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
        map("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Delete current buffer" })
        map("n", "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", { desc = "Close other buffers" })
        map("n", "<leader>bp", "<cmd>BufferLinePick<CR>", { desc = "Pick buffer" })
        map("n", "<leader>bn", "<cmd>BufferLineMoveNext<CR>", { desc = "Move buffer right" })
        map("n", "<leader>bm", "<cmd>BufferLineMovePrev<CR>", { desc = "Move buffer left" })
    end,
}
-- return {}
