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
map('n', '<A-j>', ':bnext<CR>', { noremap = true, silent = true })
map('n', '<A-k>', ':bprev<CR>', { noremap = true, silent = true })
map('n', '<C-w>', ':bdelete<CR>', { noremap = true, silent = true })

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
