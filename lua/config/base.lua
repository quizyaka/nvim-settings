vim.g.mapleader = " "

vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.o.hidden = true

vim.opt.clipboard = "unnamedplus"
vim.keymap.set({ "n", "v" }, "<C-c>", '"+y', { desc = "Копировать в системный буфер" })
vim.keymap.set({ "n", "v" }, "<C-v>", '"+p', { desc = "Вставить из системного буфера" })
-- Indent

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true


vim.api.nvim_create_autocmd("BufEnter", {
    group = vim.api.nvim_create_augroup('NeoTreeInit', { clear = true }),
    callback = function()
        local f = vim.fn.expand('%:p')
        if vim.fn.isdirectory(f) ~= 0 then
            vim.cmd('Neotree toggle')
            vim.api.nvim_clear_autocmds { group = 'NeoTreeInit' }
        end
    end
})
