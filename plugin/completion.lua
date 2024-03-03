local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local let = vim.g

-- require('lspkind').init({
--     symbol_map = {
--         Text = "",
--         Method = "",
--         Function = "",
--         Constructor = "",
--         Field = "ﰠ",
--         Variable = "",
--         Class = "ﴯ",
--         Interface = "",
--         Module = "",
--         Property = "ﰠ",
--         Unit = "塞",
--         Value = "",
--         Enum = "",
--         Keyword = "",
--         Snippet = "",
--         Color = "",
--         File = "",
--         Reference = "",
--         Folder = "",
--         EnumMember = "",
--         Constant = "",
--         Struct = "פּ",
--         Event = "",
--         Operator = "",
--         TypeParameter = "",
--     },
-- })

-- local lsp = require('lspconfig')
-- local cmp = require('cmp')

-- local has_words_before = function()
--   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
--   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
-- end

-- local cmp = require('cmp')
-- cmp.setup {
--   mapping = {
--     ['<CR>'] = cmp.mapping.confirm {
--       behavior = cmp.ConfirmBehavior.Insert,
--       select = true,
--     },

--     ['<Tab>'] = function(fallback)
--       if not cmp.select_next_item() then
--         if vim.bo.buftype ~= 'prompt' and has_words_before() then
--           cmp.complete()
--         else
--           fallback()
--         end
--       end
--     end,

--     ['<S-Tab>'] = function(fallback)
--       if not cmp.select_prev_item() then
--         if vim.bo.buftype ~= 'prompt' and has_words_before() then
--           cmp.complete()
--         else
--           fallback()
--         end
--       end
--     end,
--   },

--   snippet = {
--     expand = function(args)
--       local line_num, col = unpack(vim.api.nvim_win_get_cursor(0))
--       local line_text = vim.api.nvim_buf_get_lines(0, line_num - 1, line_num, true)[1]
--       local indent = string.match(line_text, '^%s*')
--       local replace = vim.split(args.body, '\n', true)
--       local surround = string.match(line_text, '%S.*') or ''
--       local surround_end = surround:sub(col)

--       replace[1] = surround:sub(0, col - 1)..replace[1]
--       replace[#replace] = replace[#replace]..(#surround_end > 1 and ' ' or '')..surround_end
--       if indent ~= '' then
--         for i, line in ipairs(replace) do
--           replace[i] = indent..line
--         end
--       end

--       vim.api.nvim_buf_set_lines(0, line_num - 1, line_num, true, replace)
--     end,
--   },
--   sources = cmp.config.sources({
--     { name = 'nvim_lsp' },
--     { name = 'nvim_lsp_signature_help' }
--   }, {
--     { name = 'buffer' },
--   })
-- }

-- -- Use buffer source for `/`.
-- cmp.setup.cmdline('/', {
--     completion = { autocomplete = false },
--     sources = {
--         { name = 'buffer', opts = { keyword_pattern = [=[[^[:blank:]].*]=] } }
--     }
-- })

-- -- Use cmdline & path source for ':'.
-- cmp.setup.cmdline(':', {
--     completion = { autocomplete = false },
--     sources = cmp.config.sources({
--         { name = 'path' }
--     }, {
--         { name = 'cmdline' }
--     })
-- })

-- -- Set up lspconfig.
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- local servers = { "clangd", "pyright" }

-- for _, server in ipairs(servers) do
--     lsp[server].setup {
--         capabilities = capabilities
--     }
-- end

let.coc_global_extensions = {
    "coc-clangd",
    "coc-cmake",
    "coc-css",
    "coc-cssmodules",
    "coc-prettier",
    "coc-eslint",
    "coc-html",
    "coc-htmldjango",
    "coc-html-css-support",
    "coc-json",
    "coc-lightbulb",
    "coc-markdownlint",
    "coc-markdown-preview-enhanced",
    "coc-pyright",
    "coc-tsserver",
}
