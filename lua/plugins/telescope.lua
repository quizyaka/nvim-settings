return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make", -- важно! собирает C/C++ код
            config = function()
                require("telescope").load_extension("fzf")
            end,
        },
    },
    config = function()
        require("telescope").setup({
            defaults = {
                file_ignore_patterns = { "node_modules", ".git/" },
                layout_config = {
                    horizontal = { width = 0.9 },
                },
            },
            pickers = {
                find_files = { hidden = true },
            },
        })
    end,
    cmd = "Telescope",
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
        { "<leader>fg", "<cmd>Telescope live_grep<CR>",  desc = "Live Grep" },
        { "<leader>fb", "<cmd>Telescope buffers<CR>",    desc = "Buffers" },
        { "<leader>fh", "<cmd>Telescope help_tags<CR>",  desc = "Help Tags" },
    },
}
