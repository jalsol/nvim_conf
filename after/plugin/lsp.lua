---------- LSP Zero -----------
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

---------- lspconfig -----------

local lspconfig = require('lspconfig')

lspconfig.clangd.setup({
  on_attach = lsp_zero.on_attach,
  capabilities = lsp_zero.capabilities,
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
})

---------- Mason -----------
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  automatic_installation = false,
  handlers = {
    lsp_zero.default_setup,
  },
})

local lsp = require('lsp-zero').preset({})

require('lspconfig').clangd.setup({
    cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy"
    }
})

lsp.setup()

---------- cmp -----------
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = false}),
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }),
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
})

require('ocaml').setup({
    setup_conform = false,
    -- setup_lspconfig = false,
})
