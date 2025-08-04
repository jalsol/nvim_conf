-- vim.loader.enable()

require("jalsol.remap")
require("jalsol.plugins")
require("jalsol.set")

vim.cmd [[
set rtp^="'"$(opam config var ocp-indent:share)"'/vim"
" autocmd BufRead,BufNewFile *.mll set filetype=ocaml.ocamllex
" autocmd BufRead,BufNewFile *.mly set filetype=menhir
" autocmd FileType ocamllex setlocal syntax=ocaml
]]

vim.filetype.add {
  extension = {
    mll = "ocamllex",
    mly = "menhir",
  },
}
