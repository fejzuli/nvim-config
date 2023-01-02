-- Leader keys
vim.g.mapleader = ","
vim.g.maplocalleader = " "

-- Indentation
vim.opt.autoindent = true -- Copies indenting from previous line
vim.opt.cindent = true -- C style indenting
vim.opt.expandtab = true -- Expand <Tab> to spaces in indent mode
vim.opt.smarttab = true -- <Tab> in front of line inserts 'shiftwidth' spaces
                        -- <BS> will delete 'shiftwidth' spaces
vim.opt.shiftround = true -- Round to 'shiftwidth' for "<<" and ">>"
vim.opt.shiftwidth = 4 -- Spaces for each step of (auto)indent
vim.opt.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
vim.opt.softtabstop = 4 -- Number of spaces that a <Tab> counts for
                        -- while performing editing operations

-- Visual line breaking (only eye candy, does not change actual content)
vim.opt.wrap = true -- Visually wrap lines too long for the screen
vim.opt.breakindent = true -- Wrapped lines will keep visually same indentation
                           -- as beginning of line
vim.opt.linebreak = true -- Visually wrap at breakpoint instead of last character on line
vim.opt.showbreak = ' >> ' -- String to put at start of wrapped lines

-- Search
vim.opt.ignorecase = true -- Search case insensitive
vim.opt.smartcase = true -- Search case sensitive when query contains capital letters
vim.opt.hlsearch = true -- Higlight search results
vim.opt.incsearch = true -- Search as you type

-- Miscellaneous
vim.opt.clipboard = 'unnamed,unnamedplus' -- Use system clipboard
vim.opt.number = true -- Show line numbers
vim.opt.scrolloff = 10 -- Minimal number lines to keep above and below the cursor
