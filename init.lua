-- Конфиги

require('config.base')
require('config.lazy')
require('config.themes')
require('config.lsp')
require('config.cmp')
require('config.prettier')

require('config.treesitter')
require('config.transparent')

require('config.lualines')

-- Lsp files

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

for _, v in ipairs({
    "emmet",
    "lua",
    "rust"
}) do
    require("config.lsp." .. v).config(lspconfig, capabilities)
end
