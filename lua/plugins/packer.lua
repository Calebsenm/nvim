vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Terminal
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    --  Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8', branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'wbthomason/packer.nvim'      -- Packer can manage itself
    use 'marko-cerovac/material.nvim' -- Themes nnvim material

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim", -- Optional image support in preview window: See # Preview Mode for more information
        }
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {

            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'neovim/nvim-lspconfig' },

            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }
end)
