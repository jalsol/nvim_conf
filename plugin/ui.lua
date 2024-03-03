local let = vim.g
local cmd = vim.cmd

-- local navic = require("nvim-navic")

-- require("lspconfig").clangd.setup {
--     on_attach = function(client, bufnr)
--         navic.attach(client, bufnr)
--     end
-- }

-- require("lspconfig").pyright.setup {
--     on_attach = function(client, bufnr)
--         navic.attach(client, bufnr)
--     end
-- }

require('lualine').setup {
    options = { theme = 'catppuccin' },
}

require('barbar').setup {
    animation = false,
    icons = { buffer_index = true, filetype = { enabled = true } },
    no_name_title = '[Untitled]',
}

-- cmd [[
-- hi BufferCurrentSign guifg=#DDB6F2
-- hi BufferCurrentIndex guifg=#DDB6F2
-- ]]

let.indentLine_setConceal = 0
