require("jmarc.set")
require("jmarc.remap")
require("jmarc.commands")

vim.g.copilot_enabled = false

-- Enable line numbers
vim.o.number = true

-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Enable line wrapping
vim.o.wrap = false;

-- Set the tab width to 2 spaces
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Enable bracket matching
vim.o.showmatch = true

-- Highlight search results as you type
vim.o.incsearch = true
vim.o.hlsearch = true

-- Enable mouse support
vim.o.mouse = 'a'

-- Enable clipboard support (requires Neovim to be compiled with +clipboard)
vim.o.clipboard = 'unnamedplus'

-- Auto-indent new lines
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.smarttab = true

-- Enable line and column number in the status line
vim.o.ruler = true

-- Enable relative line numbers
vim.o.relativenumber = true

-- Highlight current line
vim.o.cursorline = true

-- Show matching parentheses
vim.o.showmatch = true

-- Enable file type detection
vim.cmd('filetype plugin indent on')
