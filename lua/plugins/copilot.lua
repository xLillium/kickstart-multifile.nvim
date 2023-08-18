return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup({
        panel = {
          keymap = {
            jump_next = '<M-j>',
            jump_prev = '<M-k>',
          },
          layout = {
            position = 'right', 
            ratio = 0.5
          },
        },
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<M-l>",
            next = "<M-j>",
            prev = "<M-k>",
            dismiss = "<M-h>",
          },
        },
      })
    end,
  }
}
