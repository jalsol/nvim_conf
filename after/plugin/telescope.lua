local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
-- vim.api.nvim_set_keymap('n', '<C-p>', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '-u' }})<cr>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})

local telescope = require("telescope")
local telescopeConfig = require("telescope.config")

local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

-- I want to search in hidden/dot files.
table.insert(vimgrep_arguments, "--hidden")
-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")

telescope.setup({
	defaults = {
		vimgrep_arguments = vimgrep_arguments,
	},
	pickers = {
		find_files = {
			-- find_command = { "rg", "-u", "--files", "--hidden", "--glob", "!**/.git/*" },
            find_command = {
                "rg", "-uu", "--files", "--hidden",
                "-g", "!**/.git/*",
                "-g", "!**/node_modules/*",
                "-g", "!**/build/*",
                "-g", "!**/target/*",
                "-g", "!**/__pycache__/*",
                -- "-g", "!**/external/*",
                -- VNOJ specific
                "-g", "!**/resources/*",
                "-g", "!**/sass_processed/*",
                -- Dune
                "-g", "!**/_build/*",
                "-g", "!**/_opam/*",
            }
		},
	},
})

