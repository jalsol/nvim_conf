local let = vim.g

return require('packer').startup(function(use)
    -- Utils
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'

    -- Editing
    use 'tpope/vim-commentary'
    use 'Raimondi/delimitMate'
    use 'mhartington/formatter.nvim'

    -- Completion
    -- use 'neovim/nvim-lspconfig'
    -- use 'hrsh7th/cmp-nvim-lsp'
    -- use 'hrsh7th/cmp-buffer'
    -- use 'hrsh7th/cmp-path'
    -- use 'hrsh7th/cmp-cmdline'
    -- use 'hrsh7th/nvim-cmp'
    -- use 'hrsh7th/cmp-nvim-lsp-signature-help'
    -- use {
    --     'SirVer/ultisnips',
    --     requires = {{'honza/vim-snippets', rtp = '.'}},
    --     config = function()      
    --         let.UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'      
    --         let.UltiSnipsJumpForwardTrigger = '<Plug>(ultisnips_jump_forward)'
    --         let.UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'
    --         let.UltiSnipsListSnippets = '<c-x><c-s>'
    --         let.UltiSnipsRemoveSelectModeMappings = 0
    --     end
    -- }
    -- use 'quangnguyen30192/cmp-nvim-ultisnips'
    -- use { 'ms-jpq/coq_nvim', branch = 'coq' }
    -- use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
    -- use 'onsails/lspkind-nvim'
    use { 'neoclide/coc.nvim', branch = 'release' }
    use 'github/copilot.vim'

    -- Highlighting
    use { 'folke/tokyonight.nvim', branch = 'main' }
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'Shatur/neovim-ayu'
    use 'sainnhe/edge'
    use 'marko-cerovac/material.nvim'
    use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })
    use 'xiyaowong/nvim-transparent'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'Yggdroot/indentLine'
    use 'luochen1990/rainbow'
    use 'norcalli/nvim-colorizer.lua'
    -- use 'junegunn/rainbow_parentheses.vim'

    -- UI
    use 'nvim-lualine/lualine.nvim'
    use 'romgrk/barbar.nvim'
    use 'kyazdani42/nvim-web-devicons'
    -- use { 'SmiteshP/nvim-navic', requires = 'neovim/nvim-lspconfig' }

    -- Buffer and file management
    -- use 'kyazdani42/nvim-tree.lua'
    use { 'ms-jpq/chadtree', branch = 'chad', run = 'python3 -m chadtree deps' }
    use 'famiu/bufdelete.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- Misc
    use 'romainl/vim-cool'
    use 'folke/trouble.nvim'
    use 'karb94/neoscroll.nvim'
    use {
        requires = { "nvim-treesitter/nvim-treesitter" },
        "Badhi/nvim-treesitter-cpp-tools",
    }
end)
