-- Leader keys
vim.g.mapleader = ","
vim.g.maplocalleader = " "

-- Indentation
vim.o.autoindent = true -- Copies indenting from previous line
vim.o.cindent = true -- C style indenting
vim.o.expandtab = true -- Expand <Tab> to spaces in indent mode
vim.o.smarttab = true -- <Tab> in front of line inserts 'shiftwidth' spaces
                        -- <BS> will delete 'shiftwidth' spaces
vim.o.shiftround = true -- Round to 'shiftwidth' for "<<" and ">>"
vim.o.shiftwidth = 4 -- Spaces for each step of (auto)indent
vim.o.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
vim.o.softtabstop = 4 -- Number of spaces that a <Tab> counts for
                        -- while performing editing operations

-- Visual line breaking (only eye candy, does not change actual content)
vim.o.wrap = true -- Visually wrap lines too long for the screen
vim.o.breakindent = true -- Wrapped lines will keep visually same indentation
                           -- as beginning of line
vim.o.linebreak = true -- Visually wrap at breakpoint instead of last character on line
vim.o.showbreak = ' >> ' -- String to put at start of wrapped lines

-- Search
vim.o.ignorecase = true -- Search case insensitive
vim.o.smartcase = true -- Search case sensitive when query contains capital letters
vim.o.hlsearch = true -- Higlight search results
vim.o.incsearch = true -- Search as you type

-- Miscellaneous
vim.o.clipboard = 'unnamed,unnamedplus' -- Use system clipboard
vim.o.cursorline = true -- Highlight line where cursor sits
vim.o.number = true -- Show line numbers
vim.o.scrolloff = 10 -- Minimal number lines to keep above and below the cursor
