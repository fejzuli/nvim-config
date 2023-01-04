local wk = require('which-key')
local ts = require('telescope.builtin')

vim.keymap.set('i', 'jj', '<ESC>', { desc = 'Exit insert mode' }) -- exit insert mode on jj

vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save file' }) -- ctrl-s save in normal mode
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { desc = 'Save file' }) -- ctrl-s save in insert mode

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

-- open telescope file picker in nvim config dir
local function open_nvim_config_file()
    ts.find_files({
        search_dirs = {
            vim.fn.stdpath('config')
        },
    })
end

wk.register({ -- <Leader> mappings
    [','] = { ts.buffers, 'Switch buffer' },
    ['.'] = { ts.find_files, 'Find file' },
    ['/'] = { ts.live_grep, 'Search in files' },
    b = { -- Navigating buffers
        name = 'buffer',
        ['<Tab>'] = { '<C-^>', 'Quick switch' },
        D = { 'bdelete!', 'Delete buffer without saving' },
        n = { ':bnext<CR>', 'Next buffer' },
        p = { ':bprev<CR>', 'Previous buffer' },
        d = { ':confirm bdelete<CR>', 'Delete buffer' },
    },
    f = { -- Actions on files
        name = 'file',
        s = { ':w<CR>', 'Save file' },
    },
    q = { -- Quitting
        name = 'quit',
        q = { ':confirm qall<CR>', 'Quit Nvim' },
        Q = { ':qall!<CR>', 'Quit Nvim without saving' }
    },
    u = { -- Utilities
        name = 'util',
        c = { open_nvim_config_file, 'Open nvim config' },
        l = { require('lazy/view').show, 'Lazy (plugin manager)' },
        m = { require('mason/ui').open, 'Mason (LSP manager)' },
    },
}, { prefix = '<Leader>' })
