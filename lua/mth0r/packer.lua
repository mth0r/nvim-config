-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    --- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Dracula Colorscheme
    use 'Mofiqul/dracula.nvim'
    -- Atom onedark colorscheme
    use 'navarasu/onedark.nvim'
    -- Rosepine Colorscheme
    -- use({ 'rose-pine/neovim', as = 'rose-pine' })
    -- GruvBox
    use('gruvbox-community/gruvbox')
    use('sainnhe/gruvbox-material')

    -- Tree-Sitter
    use('nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})

    -- Harpoon
    use('nvim-lua/plenary.nvim')
    use('ThePrimeagen/harpoon')

    -- Undotree
    use('mbbill/undotree')

    -- Vim-Fugitive
    use('tpope/vim-fugitive')

    -- Lsp-Zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }


    -- ChatGPT
    --use({
    --    "jackMort/ChatGPT.nvim",
    --    config = function()
    --        require("chatgpt").setup({
    --            -- optional configuration
    --            keymaps = {
    --                submit = "<C-s>"
    --            }
    --        })
    --    end,
    --    requires = {
    --        "MunifTanjim/nui.nvim",
    --        "nvim-lua/plenary.nvim",
    --        "nvim-telescope/telescope.nvim"
    --    }
    --})

    -- Github Copilot
    --use('github/copilot.vim')

end)
