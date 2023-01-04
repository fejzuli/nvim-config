return {
    { -- highlight, edit and navigate code
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = {
                    'bash',
                    'c',
                    'comment',
                    'cpp',
                    'css',
                    'dart',
                    'dockerfile',
                    'eex',
                    'elixir',
                    'erlang',
                    'go',
                    'html',
                    'javascript',
                    'json',
                    'lua',
                    'make',
                    'php',
                    'racket',
                    'regex',
                    'rust',
                    'scheme',
                    'scss',
                    'toml',
                    'twig',
                    'typescript',
                    'vim',
                    'vue',
                    'yaml',
                },
                -- Automatically install missing parsers when entering buffer
                -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
                auto_install = true,
                highlight = {
                    enable = true,
                },
            })
        end,
    },
    -- additional text objects via treesitter
    'nvim-treesitter/nvim-treesitter-textobjects',
}
