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
set.shiftwidth = 2
set.tabstop = 2
set.softtabstop = 2
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
-- set.showmode = false
set.cmdheight = 1
set.signcolumn = 'no'
set.cursorline = true
set.colorcolumn = "90"

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
-- set.clipboard = 'unnamedplus'
set.wrap = false
let.c_no_curly_error = true
set.updatetime = 50
-- set.conceallevel = 0
set.scrolloff = 8
set.sidescrolloff = 8
set.splitright = true

-- Autoload
vim.cmd [[
" au VimLeave *call system("xsel -ib", getreg('+'))
au FileType cpp setlocal commentstring=//\ %s nowrap
au FileType c setlocal commentstring=//\ %s nowrap
" au VimLeave,VimSuspend * set guicursor=a:ver20-blinkon0
]]

vim.diagnostic.config({ virtual_text = true })
