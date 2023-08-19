--    Package Manager
--    https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- To automatically import any new plugin from 'lua/custom/plugins/*.lua' :
  -- { import = 'custom.plugins' },
  -- But manually requiring them feels more convenient to me
  -- Theme
  require 'plugins.catppuccin',
  -- Git Client ( vim-fugitive and vim-rhubarb are good alternatives ) 
  require 'plugins.lazygit',
  -- LSP
  require 'plugins.nvim-lspconfig',
  -- Autocompletion
  require 'plugins.nvim-cmp',
  -- Copilot
  require 'plugins.copilot',
}, {})
