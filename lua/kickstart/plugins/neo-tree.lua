-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>e', ':Neotree toggle reveal<CR>', desc = 'Toggle NeoTree on currently open file', silent = true },
  },

  opts = {
    event_handlers = {
      {
        event = 'file_opened',
        handler = function()
          -- Automatically close Neo-tree after opening a file
          require('neo-tree.command').execute { action = 'close' }
        end,
      },
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['Y'] = function(state)
            -- NeoTree is based on [NuiTree](https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/tree)
            -- The node is based on [NuiNode](https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/tree#nuitreenode)
            local node = state.tree:get_node()
            local filepath = node:get_id()
            local filename = node.name
            local modify = vim.fn.fnamemodify

            local results = {
              modify(filepath, ':.'),
              filepath,
              modify(filepath, ':~'),
              filename,
              modify(filename, ':r'),
              modify(filename, ':e'),
            }

            vim.ui.select({
              '1. Path relative to CWD: ' .. results[1],
              '2. Absolute path: ' .. results[2],
              '3. Path relative to HOME: ' .. results[3],
              '4. Filename: ' .. results[4],
              '5. Filename without extension: ' .. results[5],
              '6. Extension of the filename: ' .. results[6],
            }, { prompt = 'Choose to copy to clipboard:' }, function(choice)
              if choice == nil then
                vim.notify 'Cancelled copy'
              end
              local i = tonumber(choice:sub(1, 1))
              local result = results[i]
              vim.fn.setreg('+', result)
              vim.notify('Copied: ' .. result)
            end)
          end,
        },
      },
    },
  },
}
