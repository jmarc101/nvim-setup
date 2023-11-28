
-- Disable cursor line in different modes (insert, replace, etc.)
vim.opt.guicursor = ""

-- Disable line wrapping
vim.opt.wrap = false

-- Disable swap and backup files, enable persistent undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Disable highlighting during search, enable incremental search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Enable true color support
vim.opt.termguicolors = true

-- Set the number of lines to keep above and below the cursor when scrolling
vim.opt.scrolloff = 8

-- Show a column with signs (e.g., Git gutter) on the left
vim.opt.signcolumn = "yes"

-- Include '@' as a valid character for isfname (file name)
vim.opt.isfname:append("@-@")

-- Set the time (in milliseconds) to wait for commands to be received by the server
vim.opt.updatetime = 50

-- Highlight the column at character position 120
vim.opt.colorcolumn = "120"

-- Enable line numbers
vim.o.number = true

-- Enable syntax highlighting
vim.cmd('syntax enable')

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
