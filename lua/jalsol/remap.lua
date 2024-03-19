local map = vim.api.nvim_set_keymap
local let = vim.g
local cmd = vim.cmd

local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

let.mapleader = t'<Space>'

-- Copy and delete
map('n', '<C-c>', ':%y+<CR>', { noremap = true, silent = false })
map('i', '<C-h>', '<C-w>', { noremap = true, silent = true })

-- Movements between viewed lines
map('n', 'j', 'gj', { noremap = true, silent = true })
map('n', 'k', 'gk', { noremap = true, silent = true })
map('n', 'n', 'nzz', { noremap = true, silent = true })
map('n', 'N', 'Nzz', { noremap = true, silent = true })

-- Movements between windows
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Buffer
-- map('n', '<A-j>', ':bprev<CR>', { noremap = true, silent = false })
-- map('n', '<A-k>', ':bnext<CR>', { noremap = true, silent = false })
-- map('n', '<C-w>', ':Bclose<CR>', { noremap = true, silent = false })

-- map('n', '<A-j>', ':BufferPrevious<CR>', { noremap = true, silent = true })
-- map('n', '<A-k>', ':BufferNext<CR>', { noremap = true, silent = true })
-- map('n', '<C-w>', ':Bdelete<CR>', { noremap = true, silent = true })
-- 
-- map('n', '<A-1>', ':BufferGoto 1<CR>', { noremap = true, silent = true })
-- map('n', '<A-2>', ':BufferGoto 2<CR>', { noremap = true, silent = true })
-- map('n', '<A-3>', ':BufferGoto 3<CR>', { noremap = true, silent = true })
-- map('n', '<A-4>', ':BufferGoto 4<CR>', { noremap = true, silent = true })
-- map('n', '<A-5>', ':BufferGoto 5<CR>', { noremap = true, silent = true })
-- map('n', '<A-6>', ':BufferGoto 6<CR>', { noremap = true, silent = true })
-- map('n', '<A-7>', ':BufferGoto 7<CR>', { noremap = true, silent = true })
-- map('n', '<A-8>', ':BufferGoto 8<CR>', { noremap = true, silent = true })
-- map('n', '<A-9>', ':BufferGoto 9<CR>', { noremap = true, silent = true })
-- map('n', '<A-0>', ':BufferLast<CR>', { noremap = true, silent = true })

-- Redefine Esc to close quickfix
-- map('n', '<Esc>', ':cclose<CR>:TroubleClose<CR><Esc>', { noremap = true, silent = true })

-- Easier indenting
map("v", "<", "<gv", { noremap = true })
map("v", ">", ">gv", { noremap = true })

map("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
map("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })
map("n", "J", "mzJ`z", { noremap = true })
map("n", "<C-d>", "<C-d>zz", { noremap = true })
map("n", "<C-u>", "<C-u>zz", { noremap = true })

-- Misc
map("n", "Q", "<Nop>", { noremap = true })
