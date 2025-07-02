return {
  'folke/tokyonight.nvim',
  priority = 1000,
  lazy = false,
  init = function()
    require('tokyonight').setup {
      style = 'day',
      on_colors = function() end,
      on_highlights = function() end,
      terminal_colors = true,
      -- transparent = true,
    }
    vim.cmd.colorscheme 'tokyonight'
  end,
}
