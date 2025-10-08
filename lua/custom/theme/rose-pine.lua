return {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    require('rose-pine').setup {
      styles = {
        transparency = true,
        bold = false,
        italic = false,
      },
    }
    vim.cmd 'colorscheme rose-pine'
  end,
}
