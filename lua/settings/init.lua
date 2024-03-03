local set = vim.opt
local let = vim.g

-- Python host
let.python_host_prog = '/usr/bin/python'
let.python3_host_prog = '/usr/bin/python3'

-- Search
set.smartcase = true
set.synmaxcol = 2048

-- Indentation
set.shiftround = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4
set.expandtab = true

set.smartindent = true
vim.cmd [[ set cinoptions=j1,(0,ws,Ws,L0,N-s ]]

-- Folding
set.foldmethod = 'expr'
set.foldlevel = 20
set.foldenable = false
set.foldexpr = "nvim_treesitter#foldexpr()"

-- Statusline and Tabline
set.showtabline = 0
set.showmode = false
set.cmdheight = 1
set.signcolumn = 'no'
set.cursorline = true
set.colorcolumn = "80"

-- Number
set.number = true
set.relativenumber = true

-- No backup
set.backup = false
set.writebackup = false
set.swapfile = false

-- Misc
set.mouse = 'a'
set.timeoutlen = 500
-- set.completeopt = 'menu,menuone,noinsert,noselect,preview'
set.completeopt = 'menu,menuone,noselect'
set.shortmess = vim.o.shortmess .. 'c'
set.clipboard = 'unnamedplus'
set.wrap = false
let.c_no_curly_error = true
-- set.conceallevel = 0

-- Neovide & GUI settings in general
-- let.neovide_refresh_rate = 60
-- let.neovide_remember_window_size = true
-- let.neovide_input_use_logo = true
-- let.neovide_cursor_animation_length = 0
-- let.neovide_cursor_trail_length = 0
-- let.neovide_cursor_antialiasing = true
-- set.guifont = "JetBrains Mono Light:h10.85"

-- Autoload
vim.cmd [[
au VimLeave *call system("xsel -ib", getreg('+'))
au FileType cpp setlocal commentstring=//\ %s nowrap
" au FileType yaml,typescriptreact,typescript,json,html,javascript,css,scss,tex setlocal sw=2 ts=2 sts=2
" au BufRead,BufNewFile *.sage,*.pyx,*.spyx set filetype=python

au VimLeave,VimSuspend * set guicursor=a:ver20-blinkon0
]]