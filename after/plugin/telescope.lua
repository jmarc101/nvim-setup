local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})


require("telescope").setup({
    -- ... your config
    defaults = {
        borderchars = { "█", " ", "▀", "█", "█", " ", " ", "▀" },
    }
    -- ... your config
})
