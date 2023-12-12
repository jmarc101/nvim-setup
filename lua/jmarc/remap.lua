
-- Set the leader key to space
vim.g.mapleader = " "

-- Define a mapping for LazyGit
vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>', { noremap = true, silent = true })
vim.keymap.set({"n", "v"}, "<leader>gg", ':LazyGit<CR>', { noremap = true, silent = true })

-- Open the Ex (command-line) window when pressing leader + tab
vim.keymap.set("n", "<leader><tab>", vim.cmd.Ex)

-- Vertical / Horizontal Split
vim.api.nvim_set_keymap('n', '<leader>wv', ':vsplit<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>wh', ':split<CR>', { silent = true })

-- Navigation keybindings (Ctrl + hjkl for window movement)
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- Visual mode mappings to move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Normal mode mappings to move lines up and down
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Start VimWithMe collaborative editing
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)

-- Stop VimWithMe collaborative editing
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- Delete and paste in a single key press (cut and paste in visual mode)
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank and paste in a single key press (yank and paste in visual mode)
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without yanking (delete in visual mode)
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Remap Ctrl-c in insert mode to escape (exit insert mode)
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

-- Remap Q to do nothing (avoid accidentally pressing it and closing Neovim)
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-q>", ":q<CR>", { noremap = true, silent = true })


-- Format code using LSP (Language Server Protocol)
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Move to the next and previous error in the quickfix list
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Search and replace using visual mode selection
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Show code actions using LSP (Language Server Protocol)
vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { silent = true })
vim.keymap.set('n', '<leader>bc', ":ClearAllBuffersExceptCurrent<CR>", { noremap = true, silent = true })

-- Map <Leader>c to comment/uncomment the line under the cursor
vim.api.nvim_set_keymap('n', '<Leader>c', [[:s/^\(\s*\)/\1\/\/<CR>:nohlsearch<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Leader>c', [[:s/^\(\s*\)/\1\/\/<CR>:nohlsearch<CR>]], { noremap = true, silent = true })


