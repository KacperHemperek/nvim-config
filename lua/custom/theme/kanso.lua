return {
  'webhooked/kanso.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('kanso').setup {
      bold = false,
      transparent = false,
      theme = 'ink',
      background = {
        dark = 'ink',
        light = 'pearl',
      },
    }

    vim.cmd 'colorscheme kanso'
  end,
}
