local wk = require('which-key')
local ts = require('telescope.builtin')

vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save file' }) -- ctrl-s save in normal mode
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { desc = 'Save file' }) -- ctrl-s save in insert mode

vim.keymap.set( -- Toggle comment current line in normal mode
    'n',
    '<C-/>',
    function()
        require('Comment.api').toggle.linewise.current()
    end,
    { desc = 'Toggle comment current line' }
)
vim.keymap.set( -- Toggle comment selection in visual mode
    'x',
    '<C-/>',
    function()
        local esc = vim.api.nvim_replace_termcodes('<Esc>', true, false, true)
        vim.api.nvim_feedkeys(esc, 'nx', false)
        require('Comment.api').toggle.linewise(vim.fn.visualmode())
    end,
    { desc = 'Toggle comment over selection' }
)

wk.register({ -- <Leader> mappings
    q = { -- Quitting
        name = 'quit',
        q = { ':qa<CR>', 'Quit Nvim' },
        Q = { ':qa!<CR>', 'Quit Nvim without saving' }
    },
    u = { -- Utilities
        name = 'util',
        c = { ':cd ~/.config/nvim<CR>:e init.lua<CR>', 'Change to config dir' },
        l = { require('lazy/view').show, 'Lazy (plugin manager)' },
        m = { require('mason/ui').open, 'Mason (LSP manager)' },
    },
    [','] = { ts.buffers, 'Switch buffer' },
    ['.'] = { ts.find_files, 'Find file' },
    ['/'] = { ts.live_grep, 'Search in files' },
}, { prefix = '<Leader>' })

wk.register({
    f = { ts.current_buffer_fuzzy_find, 'Fuzzy find' },
    s = { ':w<CR>', 'Save buffer' },
}, { prefix = '<LocalLeader>' })
