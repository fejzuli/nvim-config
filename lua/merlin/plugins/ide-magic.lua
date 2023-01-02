return {
    { -- autocompletion
        'hrsh7th/nvim-cmp',
        dependencies = {
            -- nvim-cmp source for built-in lsp
            'hrsh7th/cmp-nvim-lsp',
            -- snippets
            'L3MON4D3/LuaSnip',
            -- luasnip completion source for nvim-cmp
            'saadparwaiz1/cmp_luasnip',
        },
        config = function()
            local cmp = require('cmp')
            local luasnip = require('luasnip')

            cmp.setup()
            -- TODO finish setup
        end,
    },
    { -- init.lua and plugin development completion
        'folke/neodev.nvim',
        config = true,
    },
    -- configurations for the nvim lsp client
    'neovim/nvim-lspconfig',
    { -- manage external editor tooling (lsp, dap, linters, formatters)
        'williamboman/mason.nvim',
        lazy = false,
        config = true,
    },
    { -- bridge between mason and lspconfig
        'williamboman/mason-lspconfig.nvim',
        dependencies = {
            'williamboman/mason.nvim', -- dependency from above
        },
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = { 'sumneko_lua' },
            })

            require('lspconfig').sumneko_lua.setup({
                settings = {
                    Lua = {
                        workspace = { checkThirdParty = false },
                        telemetry = { enable = false },
                    },
                },
            })
        end,
    },
    {
        -- lsp progress ui
        'j-hui/fidget.nvim',
        dependencies = {
            'nvim-lspconfig', -- dependency from above
        },
        config = true,
    },
}
