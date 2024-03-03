local map = vim.api.nvim_set_keymap
local let = vim.g
local cmd = vim.cmd

local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

let.mapleader = t'<Space>'

-- AsyncRun
-- map('n', '<C-B>', ':w | AsyncRun cnc % 17<CR>', { noremap = true, silent = true })
-- map('n', '<F9>', ':w | AsyncRun cncdb % 17<CR>', { noremap = true, silent = true })

-- Copy and delete
map('n', '<C-c>', ':%y+<CR>', { noremap = true, silent = false })
map('i', '<C-h>', '<C-w>', { noremap = true, silent = true })
-- GUI version
map('i', '<C-BS>', '<C-w>', { noremap = true, silent = true })

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

map('n', '<A-j>', ':BufferPrevious<CR>', { noremap = true, silent = true })
map('n', '<A-k>', ':BufferNext<CR>', { noremap = true, silent = true })
map('n', '<C-w>', ':Bdelete<CR>', { noremap = true, silent = true })

map('n', '<A-1>', ':BufferGoto 1<CR>', { noremap = true, silent = true })
map('n', '<A-2>', ':BufferGoto 2<CR>', { noremap = true, silent = true })
map('n', '<A-3>', ':BufferGoto 3<CR>', { noremap = true, silent = true })
map('n', '<A-4>', ':BufferGoto 4<CR>', { noremap = true, silent = true })
map('n', '<A-5>', ':BufferGoto 5<CR>', { noremap = true, silent = true })
map('n', '<A-6>', ':BufferGoto 6<CR>', { noremap = true, silent = true })
map('n', '<A-7>', ':BufferGoto 7<CR>', { noremap = true, silent = true })
map('n', '<A-8>', ':BufferGoto 8<CR>', { noremap = true, silent = true })
map('n', '<A-9>', ':BufferGoto 9<CR>', { noremap = true, silent = true })
map('n', '<A-0>', ':BufferLast<CR>', { noremap = true, silent = true })

-- Hot edit and reload config file
-- map('n', '<Leader>e', ':e ~/.config/nvim/init.lua<CR>', { noremap = true, silent = false })
-- map('n', '<Leader>r', ':Reload<CR>', { noremap = true, silent = false })

-- Redefine Esc to close quickfix
map('n', '<Esc>', ':cclose<CR>:TroubleClose<CR><Esc>', { noremap = true, silent = true })

-- Tree
-- map('n', '<C-n>', ":lua require('tree').toggle()<CR>", { noremap = true, silent = true })
map('n', '<C-n>', ":CHADopen<CR>", { noremap = true, silent = true })
-- map('n', '<C-n>', ":RnvimrToggle<CR>", { noremap = true, silent = true })

-- Completion with tab
-- _G.tab_complete = function()
--     if vim.fn.pumvisible() == 1 then
--         return t "<C-n>"
--     else
--         return t "<Tab>"
--     end
-- end
-- _G.s_tab_complete = function()
--     if vim.fn.pumvisible() == 1 then
--         return t "<C-p>"
--     else
--         return t "<S-Tab>"
--     end
-- end

-- map("i", "<Tab>", "v:lua.tab_complete()", { expr = true })
-- map("s", "<Tab>", "v:lua.tab_complete()", { expr = true })
-- map("i", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })
-- map("s", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })

-- cmd [[
-- imap <silent><expr> <CR> pumvisible() ? (complete_info().selected == -1 ? "\<C-e><Plug>delimitMateCR" : "\<C-y>") : "\<Plug>delimitMateCR"
-- ino <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
-- ino <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<BS>"
-- " inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>" 
-- nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
-- ]]
--

cmd [[
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<Plug>delimitMateCR"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
]]

-- Easier indenting
map("v", "<", "<gv", { noremap = true })
map("v", ">", ">gv", { noremap = true })

-- Telescope
-- map("n", "<leader>f", ":Telescope find_files<cr>", { noremap = true })
-- map('n', '<leader>f', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '-u' }})<cr>", { noremap = true, silent = true })
-- map("n", "<leader>g", ":Telescope live_grep<cr>", { noremap = true, silent = true })
-- map("n", "<leader>b", ":Telescope buffers<cr>", { noremap = true, silent = true })
-- map("n", "<leader>h", ":Telescope help_tags<cr>", { noremap = true, silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})

-- Misc
map("n", "Q", "<Nop>", { noremap = true })

