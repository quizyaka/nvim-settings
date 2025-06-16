return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- иконки
        "MunifTanjim/nui.nvim",        -- UI-компоненты
    },
    cmd = "Neotree",
    keys = {
        { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
        { "<leader>o", "<cmd>Neotree focus<CR>",  desc = "Focus Neo-tree" },
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            enable_git_status = true,
            enable_diagnostics = false,
            default_component_configs = {
                buffer = {
                    follow_current_file = { enabled = true },
                },
            },
            window = {
                mappings = {
                    -- ["<space>"] = "toggle_node",
                    ["<cr>"] = "open",
                    ["s"] = "open_split",
                    ["v"] = "open_vsplit",
                    ["t"] = "open_tabnew",
                    -- ["d"] = "buffer_delete",
                },
            },
        })
    end,

}
