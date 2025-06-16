return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup({
            size = 20,
            open_mapping = nil,
            persist_mode = true,
            direction = "float",
            close_on_exit = false,
        })

        local cargo_term = require("toggleterm.terminal").Terminal:new({
            cmd = "cargo run",
            hidden = true,
            direction = "float",
            on_open = function(term)
                vim.cmd("startinsert!")
            end,
        })

        vim.keymap.set("n", "<leader>rr", function()
            cargo_term:toggle()
            if cargo_term:is_open() then
                cargo_term:send("cargo run\n")
            end
        end, { desc = "Run Rust project" })
    end
}
