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

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down half page' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up half page' })

-- Toggle wraplines
vim.keymap.set('n', '<leader>tw', '<cmd>set wrap!<CR>', { desc = '[T]oggle [w]rap lines' })

vim.keymap.set({ 'n', 'v' }, 'x', '"_x', { desc = 'Delete without yanking' })
vim.keymap.set({ 'n', 'v' }, 'X', '"_X', { desc = 'Delete without yanking before' })
