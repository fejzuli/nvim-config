return {
    { -- highlight, edit and navigate code
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },
    -- additional text objects via treesitter
    'nvim-treesitter/nvim-treesitter-textobjects',
}
