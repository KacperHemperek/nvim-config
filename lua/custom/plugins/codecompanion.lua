return {
  'olimorris/codecompanion.nvim',
  opts = {
    adapters = {
      copilot = function()
        return require('codecompanion.adapters').extend('copilot', {
          schema = {
            model = {
              default = 'claude-3.7-sonnet',
            },
          },
        })
      end,
    },
    strategies = {
      chat = {
        adapter = 'copilot',
      },
      inline = {
        adapter = 'copilot',
      },
      agent = {
        adapter = 'copilot',
      },
    },
    keymap = {
      chat = {
        toggle = '<leader>tc', -- Set the toggle keymap here
        submit = '<C-s>',
        -- Other chat keymaps if needed...
      },
    },
  },
  init = function()
    vim.cmd [[cab cc CodeCompanion]]
    -- vim.keymap.set('n', '<leader>tc', '<cmd>CodeCompanionChat Toggle<CR>', { desc = '[T]oggle [C]hat' })
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
}
