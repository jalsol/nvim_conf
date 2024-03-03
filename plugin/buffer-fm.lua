local let = vim.g

let.chadtree_settings = {
    ['theme.text_colour_set'] = "nord"
}

require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '-u'
        }
    }
}
