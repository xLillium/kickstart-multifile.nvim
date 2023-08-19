return {
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', tag = 'legacy', event = 'LspAttach', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
    config = function()
      -- Setup neovim lua configuration
      require('neodev').setup()
      require('mason').setup()
      local servers = {
        eslint = {},
        lua_ls = {
          Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
        tsserver = {},
      }
      local mason_lspconfig = require('mason-lspconfig')
      mason_lspconfig.setup({ ensure_installed = vim.tbl_keys(servers) })

      -- nvim-cmp supports additional completion capabilities, so broadcast that to servers
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
      mason_lspconfig.setup_handlers {
        function (server_name) -- default handler (optional)
            require('lspconfig')[server_name].setup {
                capabilities = capabilities,
                settings = servers[server_name],
                filetypes = (servers[server_name] or {}).filetypes,
            }
        end,
      }
    end,
  },
}
