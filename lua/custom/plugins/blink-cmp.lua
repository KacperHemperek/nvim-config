return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',
  version = '*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    signature = { enabled = true },
    keymap = {
      ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
      ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
      ['<Tab>'] = { 'select_next', 'fallback' },
      ['<S-Tab>'] = { 'select_prev', 'fallback' },
      ['<Enter>'] = { 'accept', 'fallback' },
      ['<C-Space>'] = { 'show', 'fallback' },
    },
    completion = {
      list = { selection = { preselect = true, auto_insert = false } },
      menu = {
        draw = {
          columns = { { 'kind_icon' }, { 'label', 'label_description', 'kind', gap = 1 } },
          -- columns = { { 'label', 'label_description', gap = 1 }, { 'kind_icon', 'kind' } },
          treesitter = { 'lsp' },
        },
      },
    },

    appearance = {
      nerd_font_variant = 'normal',
      use_nvim_cmp_as_default = true,
    },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
      cmdline = {},
    },
  },
  opts_extend = { 'sources.default' },
}
