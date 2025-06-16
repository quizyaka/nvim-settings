-- Конфиги
require('config.base')
require('config.lazy')
require('config.themes')
require('config.lsp')
require('config.cmp')
require('config.prettier')

require('config.treesitter')
require('config.transparent')

-- Статусная строка и табы
--[=[
vim.cmd([[
    hi StatusLine guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
    hi StatusLineNC guibg=NONE ctermbg=NONE
  ]])
    ]=]
-- Границы и разделители

-- Особые элементы (NvimTree, Telescope и др.)
