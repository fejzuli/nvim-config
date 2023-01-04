local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
    print('installing lazy.nvim plugin manager...')
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        '--branch=v7.8.0',
        'https://github.com/folke/lazy.nvim.git',
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup('merlin/plugins', {})
