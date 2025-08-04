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

-- require('ocaml').setup({
--     setup_conform = false,
--     -- setup_lspconfig = false,
-- })

local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local h = require("null-ls.helpers")

local ormolu = {
  method = null_ls.methods.FORMATTING,
  filetypes = { "haskell" },
  generator = h.formatter_factory({
    command = "ormolu",
    args = { "--stdin-input-file", "$FILENAME" },
    to_stdin = true,
  }),
}

local ocamlformat = {
  method = null_ls.methods.FORMATTING,
  filetypes = { "ocaml" },
  generator = h.formatter_factory({
    command = "ocamlformat",
    args = { "--name", "$FILENAME", "-" },
    to_stdin = true,
  }),
}

null_ls.setup({
  sources = {
    ormolu,
    ocamlformat,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      local group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = group,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})
