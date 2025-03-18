return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup {}

    -- local statusline = require 'mini.statusline'
    -- You can configure sections in the statusline by overriding their
    -- default behavior. For example, here we set the section for
    -- cursor location to LINE:COLUMN
    ---@diagnostic disable-next-line: duplicate-set-field
    -- statusline.section_location = function()
    --   return '%2l:%-2v'
    -- end

    -- statusline.setup {
    --   content = {
    --     active = function()
    --       local always_short = 9999
    --       local mode, mode_hl = MiniStatusline.section_mode { trunc_width = always_short }
    --       local git = MiniStatusline.section_git { trunc_width = 40 }
    --       local filename = MiniStatusline.section_filename { trunc_width = always_short }
    --       local fileinfo = MiniStatusline.section_fileinfo { trunc_width = always_short }
    --       local location = MiniStatusline.section_location { trunc_width = 75 }
    --       local search = MiniStatusline.section_searchcount { trunc_width = 75 }
    --
    --       return MiniStatusline.combine_groups {
    --         { hl = mode_hl, strings = { mode } },
    --         { hl = 'MiniStatuslineDevinfo', strings = { git } },
    --         '%<', -- Mark general truncate point
    --         { hl = 'MiniStatuslineFilename', strings = { filename } },
    --         '%=', -- End left alignment
    --         { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
    --         { hl = mode_hl, strings = { search, location } },
    --       }
    --     end,
    --     inactive = nil,
    --   },
    --   use_icons = vim.g.have_nerd_font,
    -- }
  end,
}
