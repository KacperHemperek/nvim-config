return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',
  version = '*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    signature = { enabled = true, window = { border = 'rounded', scrollbar = false } },
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
      documentation = { auto_show_delay_ms = 0, auto_show = true, window = { border = 'rounded', scrollbar = false } },
      menu = {
        border = 'rounded',
        scrollbar = false,
        draw = {
          columns = { { 'kind_icon' }, { 'label', 'label_description', 'kind', gap = 1 } },
          treesitter = { 'lsp' },
        },
      },

      accept = {
        auto_brackets = {
          kind_resolution = {
            enabled = true,
            blocked_filetypes = { 'typescriptreact', 'javascriptreact', 'html', 'xml', 'vue' },
          },
        },
      },
    },

    appearance = {
      nerd_font_variant = 'normal',
      use_nvim_cmp_as_default = true,
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
      per_filetype = {
        codecompanion = { 'codecompanion' },
      },
    },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    cmdline = {
      sources = {},
    },
  },
  opts_extend = { 'sources.default' },
}
