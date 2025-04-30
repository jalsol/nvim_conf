-- vim.loader.enable()

require("jalsol.remap")
require("jalsol.plugins")
require("jalsol.set")

vim.cmd [[
set rtp^="/home/jalsol/.opam/default/share/ocp-indent/vim"
" autocmd BufRead,BufNewFile *.mll set filetype=ocamllex
" autocmd BufRead,BufNewFile *.mly set filetype=ocamllex
" autocmd FileType ocamllex setlocal syntax=ocaml
]]
