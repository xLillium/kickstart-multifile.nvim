vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


--------------------
-- Plugin Keymaps --
--------------------

-- Lazy Git
vim.keymap.set('n', '<leader>lg', ':LazyGit<CR>', { desc = 'Open [L]azy[G]it' })
