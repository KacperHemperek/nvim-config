return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {
      enabled = true,
      indent = {
        char = '▏',
      },
      scope = {
        enabled = false,
      },
    },
    init = function()
      local toggle = function()
        vim.cmd 'IBLToggle'
      end
      vim.keymap.set('n', '<leader>ti', toggle, { noremap = true, silent = true, desc = '[T]oggle [i]ndentation guides' })
    end,
  },
}
