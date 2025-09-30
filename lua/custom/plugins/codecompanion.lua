return {
  -- `adapters.<adapter_name>` and `adapters.opts` is deprecated, use `adapters.http.<adapter_name>` and `adapters.http.opts` instead.
  -- Feature will be removed in CodeCompanion v18.0.0
  'olimorris/codecompanion.nvim',
  opts = {
    -- adapters = {
    --   http = {
    --     copilot = function()
    --       return require('codecompanion.adapters').extend('copilot', {
    --         schema = {
    --           model = {
    --             default = 'gemini-2.5-pro',
    --           },
    --         },
    --       })
    --     end,
    --   },
    -- },
    strategies = {
      chat = {
        name = 'copilot',
        model = 'claude-sonnet-4',
      },
      inline = {
        name = 'copilot',
        model = 'claude-sonnet-4',
      },
      agent = {
        name = 'copilot',
        model = 'claude-sonnet-4',
      },
    },
  },
  init = function()
    vim.cmd [[cab cc CodeCompanion]]
    vim.keymap.set('n', '<leader>tc', '<cmd>CodeCompanionChat Toggle<CR>', { desc = '[T]oggle [C]hat' })
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
}
