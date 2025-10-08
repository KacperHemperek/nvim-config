---@module 'lazy.nvim'
---@type LazyPluginView
return {
  'sindrets/diffview.nvim',
  config = function()
    require('diffview').setup {
      file_panel = {
        listing_style = 'list',
      },
    }

    -- NOTE: Keymaps

    local map = function(keys, func, desc, mode)
      mode = mode or 'n'
      vim.keymap.set(mode, keys, func, { desc = 'Diffview: ' .. desc })
    end

    map('<leader>do', vim.cmd.DiffviewOpen, '[D]iffview [O]pen')
    map('<leader>df', vim.cmd.DiffviewFileHistory, '[D]iffview [F]ile history')
    map('<leader>dc', vim.cmd.DiffviewClose, '[D]iffview [C]lose')
  end,
}
