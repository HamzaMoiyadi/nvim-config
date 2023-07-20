-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Switching panes (specifically for tmux)
vim.keymap.set('n', '<C-h>', "<cmd> TmuxNavigateLeft<CR>", { desc = "Focus on Window Left" })
vim.keymap.set('n', '<C-l>', "<cmd> TmuxNavigateRight<CR>", { desc = "Focus on Window Right" })
vim.keymap.set('n', '<C-j>', "<cmd> TmuxNavigateDown<CR>", { desc = "Focus on Window Down" })
vim.keymap.set('n', '<C-k>', "<cmd> TmuxNavigateUp<CR>", { desc = "Focus on Window Up" })

-- Toggle NvimTree easily
vim.keymap.set('n', '<C-M-E>', "<cmd> NvimTreeToggle<CR>", { desc = "Toggle [n]vimTree" })
