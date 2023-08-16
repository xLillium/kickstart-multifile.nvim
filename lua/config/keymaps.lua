vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
local set_keymap = vim.keymap.set


--------------------
-- General Keymaps --
--------------------

-- Clear search highlights
set_keymap('n', '<leader>nh', ':nohl<CR>', { desc = '[N]o [H]ighlights' })

-- Delete single character without copying into register
set_keymap('n', 'x', '"_x')

-- Move text up and down
set_keymap('n', '<A-j>', ':m .+1<CR>==')
set_keymap('n', '<A-k>', ':m .-2<CR>==')
set_keymap('v', '<A-j>', ':m \'>+1<CR>gv=gv')
set_keymap('v', '<A-k>', ':m \'<-2<CR>gv=gv')

-- Window management
set_keymap('n', '<leader>sh', '<C-w>s', { desc = '[S]plit [H]orizontally' })
set_keymap('n', '<leader>sv', '<C-w>v', { desc = '[S]plit [V]ertically' })
set_keymap('n', '<leader>se', '<C-w>=', { desc = '[S]plit [E]qualize sizes' })
set_keymap('n', '<leader>sc', ':close<CR>', { desc = '[S]plit [C]lose' })

-- Better window navigation
set_keymap('n', '<C-h>', '<C-w>h')
set_keymap('n', '<C-j>', '<C-w>j')
set_keymap('n', '<C-k>', '<C-w>k')
set_keymap('n', '<C-l>', '<C-w>l')

-- Resize windows with arrows
set_keymap('n', '<C-Up>', ':resize -2<CR>')
set_keymap('n', '<C-Down>', ':resize +2<CR>')
set_keymap('n', '<C-Left>', ':vertical resize -2<CR>')
set_keymap('n', '<C-Right>', ':vertical resize +2<CR>')

-- Tab management 
set_keymap('n', '<leader>to', ':tabnew<CR>', { desc = '[T]ab [O]pen' })
set_keymap('n', '<leader>tc', ':tabclose<CR>', { desc = '[T]ab [C]lose' })
set_keymap('n', '<leader>tn', ':tabn<CR>', { desc = '[T]ab [N]ext' })
set_keymap('n', '<leader>tp', ':tabp<CR>', { desc = '[T]ab [P]revious' })


--------------------
-- Plugin Keymaps --
--------------------

-- Lazy Git
set_keymap('n', '<leader>lg', ':LazyGit<CR>', { desc = 'Open [L]azy[G]it' })
