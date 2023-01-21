local wk = require('which-key')
local ts = require('telescope.builtin')

vim.keymap.set('i', 'jj', '<ESC>', { desc = 'Exit insert mode' })

-- TODO check if this is the best key to bind to
vim.keymap.set('n', '<C-f>', ts.current_buffer_fuzzy_find, { desc = 'Fuzzy find in current buffer' })

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

wk.register({ -- <LEADER> mappings
    [','] = { ts.buffers, 'Switch buffer' },
    ['.'] = { ts.find_files, 'Find file' },
    ['/'] = { ts.live_grep, 'Search in files' },
    f = {
        name = 'file',
        s = { ':confirm update<CR>', 'Save file' },
    },
    q = { ':confirm qall<CR>', 'Quit' },
    u = {
        name = 'util',
        c = {
            function() ts.find_files({ search_dirs = { vim.fn.stdpath('config') } }) end,
            'Open nvim config'
        },
        l = { function() require('lazy/view').show() end, 'Lazy (plugin manager)' },
        m = { function() require('mason/ui').open() end, 'Mason (LSP manager)' },
    },
}, { prefix = '<LEADER>' })
