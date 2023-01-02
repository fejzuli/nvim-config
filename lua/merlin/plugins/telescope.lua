return { -- fuzzy finder
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-symbols.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
        },
    },
    config = function()
        require('telescope').setup()
        require('telescope').load_extension('fzf')
    end,
    lazy = false,
}
