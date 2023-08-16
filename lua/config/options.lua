-- Kickstart options
-- Make line numbers default
vim.wo.number = true
-- Enable mouse mode
vim.o.mouse = 'a'
-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'
-- Save undo history
vim.o.undofile = true
-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'
-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300
-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
-- Enable true colors 
vim.o.termguicolors = true

-- Custom options
-- Show relative line numbers
vim.wo.relativenumber = true
-- Disable line wrapping
vim.o.wrap = false 
-- Scroll will keep a number of line above cursor 
vim.wo.scrolloff = 8
vim.wo.sidescrolloff = 8
-- Highlight current line
vim.o.cursorline = true
-- Indentation and Tab
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
-- Split panes
vim.o.splitright = true
vim.o.splitbelow = true
