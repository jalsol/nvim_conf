local let = vim.g

let.delimitMate_expand_cr = 2

require("ibl").setup {
    indent = {
        char = '┊',
    },
    scope = {
        enabled = false,
    },
}

require'treesitter-context'.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 20, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'topline',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = '-',
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}

local lightbuild_config = {
    sign = {
        enabled = false,
    },

    virtual_text = {
        enabled = true,
        text = "💡",
        pos = "eol",
        hl = "LightBulbVirtualText",
        -- How to combine other highlights with text highlight.
        -- See `hl_mode` of |nvim_buf_set_extmark|.
        hl_mode = "combine",
    },

    -- 5. Number column.
    number = {
        enabled = true,
        -- Highlight group to highlight the number column if there is a lightbulb.
        hl = "LightBulbNumber",
    },

    -- 6. Content line.
    line = {
        enabled = true,
        -- Highlight group to highlight the line if there is a lightbulb.
        hl = "LightBulbLine",
    },

    autocmd = {
        enabled = true,
    },
}

require("nvim-lightbulb").setup(lightbuild_config)

require("ranger-nvim").setup({ replace_netrw = true })
