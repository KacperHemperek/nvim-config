return {
  'webhooked/kanso.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('kanso').setup {
      bold = false,
      transparent = true,
      theme = 'zen',
      background = {
        dark = 'zen',
        light = 'pearl',
      },
    }

    vim.cmd 'colorscheme kanso'
  end,
}
