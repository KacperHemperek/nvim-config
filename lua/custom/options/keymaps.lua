vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Indend without exiting visual mode
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right' })

-- Resize windows
vim.keymap.set('n', '<Up>', '<cmd>resize +2<CR>', { desc = 'Resize window up' })
vim.keymap.set('n', '<Down>', '<cmd>resize -2<CR>', { desc = 'Resize window down' })
vim.keymap.set('n', '<Left>', '<cmd>vertical resize +2<CR>', { desc = 'Resize window left' })
vim.keymap.set('n', '<Right>', '<cmd>vertical resize -2<CR>', { desc = 'Resize window right' })
