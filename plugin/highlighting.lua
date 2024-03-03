local set = vim.opt
local let = vim.g
local cmd = vim.cmd

set.termguicolors = true

require("catppuccin").setup({
    flavour = "latte", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    integrations = {
        nvimtree = true,
        telescope = true,
    },
    coc_nvim = true,
})

-- require("tokyonight").setup({
--   transparent = true,
--   terminal_colors = true,
-- })

-- require('material').setup({
--     contrast = {
--         terminal = false, -- Enable contrast for the built-in terminal
--         sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
--         floating_windows = false, -- Enable contrast for floating windows
--         cursor_line = true, -- Enable darker background for the cursor line
--         non_current_windows = false, -- Enable darker background for non-current windows
--     },

--     plugins = { -- Uncomment the plugins that you use to highlight them
--         -- Available plugins:
--         -- "dap",
--         -- "dashboard",
--         -- "gitsigns",
--         -- "hop",
--         "indent-blankline",
--         -- "lspsaga",
--         -- "mini",
--         -- "neogit",
--         -- "neorg",
--         -- "nvim-cmp",
--         -- "nvim-navic",
--         -- "nvim-tree",
--         -- "nvim-web-devicons",
--         -- "sneak",
--         "telescope",
--         -- "trouble",
--         -- "which-key",
--     },

--     disable = {
--         colored_cursor = false, -- Disable the colored cursor
--         borders = false, -- Disable borders between verticaly split windows
--         background = true, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
--         term_colors = false, -- Prevent the theme from setting terminal colors
--         eob_lines = false -- Hide the end-of-buffer lines
--     },

--     high_visibility = {
--         lighter = false, -- Enable higher contrast text for lighter style
--         darker = false -- Enable higher contrast text for darker style
--     },

--     lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

--     async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)
-- })

set.background = "light"
-- let.edge_better_performance = 1
-- cmd [[ colorscheme edge ]]
-- let.material_style = "lighter"
cmd "colorscheme catppuccin"

-- require("transparent").setup({
--   enable = true, -- boolean: enable transparent
--   extra_groups = { -- table/string: additional groups that should be cleared
--     -- In particular, when you set it to 'all', that means all available groups

--     -- example of akinsho/nvim-bufferline.lua
--     "BufferLineTabClose",
--     "BufferlineBufferSelected",
--     "BufferLineFill",
--     "BufferLineBackground",
--     "BufferLineSeparator",
--     "BufferLineIndicatorSelected",
--   },
--   exclude = {}, -- table: groups you don't want to clear
--   ignore_linked_group = true, -- boolean: don't clear a group that links to another group
-- })

require('nvim-treesitter.configs').setup {
    ensure_installed = "all",
    highlight = { 
        enable = true,
        custom_captures = {
            ["character"] = "TSString",
            ["operator"] = "TSStringEscape",
            ["constructor"] = "TSFunction",
        }
    },
    rainbow = {
        enable = false,
        extended_mode = true,
        max_file_lines = nil,

        -- colors = {
        --     "#f7768e",
        --     "#73daca",
        --     "#e0af68",
        --     "#7aa2f7",
        --     "#bb9af7",
        --     "#7dcfff",
        --     "#414868",
        -- }

        -- colors = {
        --     "#8c4351",
        --     "#33635c",
        --     "#8f5e15",
        --     "#34548a",
        --     "#5a4a78",
        --     "#0f4b6e",
        --     "#965027",
        -- }
    }
}

let.indentLine_char = '▏';
let.rainbow_active = 1;

cmd [[
let g:rainbow_conf = {
\ 'guifgs': [ "#8c4351", "#33635c", "#8f5e15", "#34548a", "#5a4a78", "#0f4b6e", "#965027", ]
\ }
]]

cmd [[
augroup rainbow
    au BufEnter *     hi      TSPunctBracket NONE
    au BufEnter *     hi link TSPunctBracket nonexistenthl
    au BufEnter *.lua hi      TSConstructor  NONE
    au BufEnter *.lua hi link TSConstructor  nonexistenthl
augroup END
]]

require('colorizer').setup()
