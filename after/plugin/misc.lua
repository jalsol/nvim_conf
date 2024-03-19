local let = vim.g

let.delimitMate_expand_cr = 2

-- require('lualine').setup { options = { theme = 'catppuccin' } }

require("ibl").setup {
    indent = {
        char = '┊',
    },
    scope = {
        enabled = false,
    },
}

