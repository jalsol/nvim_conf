local map = vim.api.nvim_set_keymap
local let = vim.g
local cmd = vim.cmd

local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local function copy_path(register_buffer)
    local path = vim.fn.expand("%:p")
    vim.fn.setreg(register_buffer, path .. '\n')
    vim.notify(path)
end

let.mapleader = t'<Space>'

local noremap = { noremap = true, silent = false }
local silent_noremap = { noremap = true, silent = true }

-- Copy and delete
map('n', '<C-c>', ':%y+<CR>', noremap)
map('i', '<C-h>', '<C-w>', silent_noremap)

-- Paste from system clipboard
map("n", "<leader>p", '"+p', noremap)
map("n", "<leader>P", '"+P', noremap)
map("v", "<leader>p", '"+p', noremap)
map("v", "<leader>P", '"+P', noremap)

-- Copy to system clipboard
map("v", "<leader>y", '"+y', noremap)
map("n", "<leader>Y", '"+Y', noremap)
map("n", "<leader>y", '"+y', noremap)

-- Delete without copying to clipboard
map("n", "<leader>d", '"_d', noremap)
map("v", "<leader>d", '"_d', noremap)

-- Movements between viewed lines
map('n', 'j', 'gj', silent_noremap)
map('n', 'k', 'gk', silent_noremap)
map('n', 'n', 'nzz', silent_noremap)
map('n', 'N', 'Nzz', silent_noremap)

-- Movements between windows
map('n', '<C-h>', '<cmd><C-U>TmuxNavigateLeft<CR>', silent_noremap)
map('n', '<C-j>', '<cmd><C-U>TmuxNavigateDown<CR>', silent_noremap)
map('n', '<C-k>', '<cmd><C-U>TmuxNavigateUp<CR>', silent_noremap)
map('n', '<C-l>', '<cmd><C-U>TmuxNavigateRight<CR>', silent_noremap)

-- Buffer
map('n', '<A-j>', ':bnext<CR>', noremap)
map('n', '<A-k>', ':bprev<CR>', noremap)
map('n', '<C-w>', ':bdelete<CR>', noremap)

-- Easier indenting
map("v", "<", "<gv", silent_noremap)
map("v", ">", ">gv", silent_noremap)

-- Easier moving of lines
map("v", "J", ":m '>+1<CR>gv=gv", silent_noremap)
map("v", "K", ":m '<-2<CR>gv=gv", silent_noremap)

-- Join lines without moving cursor
map("n", "J", "mzJ`z", silent_noremap)

-- Keep cursor in place while scrolling the page
map("n", "<C-d>", "<C-d>zz", silent_noremap)
map("n", "<C-u>", "<C-u>zz", silent_noremap)

-- Misc
map("n", "Q", "<Nop>", silent_noremap)

map("n", "<leader>j", "", {
    noremap = true,
    callback = function() require("ranger-nvim").open(true) end,
})

map("n", "m", "", {
    noremap = true,
    callback = function() copy_path('"') end,
})

map("n", "<leader>m", "", {
    noremap = true,
    callback = function() copy_path('+') end,
})
