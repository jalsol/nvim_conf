local rainbow_delimiters = require 'rainbow-delimiters'

vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    priority = {
        [''] = 110,
        lua = 210,
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}

vim.cmd [[
highlight RainbowDelimiterRed ctermfg=208 guifg=#d20f39
highlight RainbowDelimiterYellow ctermfg=214 guifg=#df8e1d
highlight RainbowDelimiterBlue ctermfg=33 guifg=#1e66f5
highlight RainbowDelimiterOrange ctermfg=202 guifg=#fe640b
highlight RainbowDelimiterGreen ctermfg=71 guifg=#40a02b
highlight RainbowDelimiterViolet ctermfg=57 guifg=#8839ef
highlight RainbowDelimiterCyan ctermfg=45 guifg=#209fb5
]]
