return {
    { -- The lazy plugin manager used to manage all these
        'folke/lazy.nvim',
        tag = 'v7.8.0',
        pin = true,
    },
    { -- monochrome dark theme
        'jesseleite/nvim-noirbuddy',
        dependencies = { 'tjdevries/colorbuddy.nvim', branch = 'dev' },
        lazy = false,
        priority = 1000,
        config = function()
            require('noirbuddy').setup({
                preset = 'miami-nights',
            })
        end,
    },
    { -- statusline
        'nvim-lualine/lualine.nvim',
        dependencies = 'kyazdani42/nvim-web-devicons',
        lazy = false,
        priority = 999,
        config = true,
    },
    { -- popup with possible keybindings
        'folke/which-key.nvim',
        lazy = false,
        priority = 998,
    },
    -- automatically adjust shiftwidth and expandtab
    'tpope/vim-sleuth',
    -- indent guides
    'lukas-reineke/indent-blankline.nvim',
    -- quickly comment out code
    'numToStr/Comment.nvim',
}
