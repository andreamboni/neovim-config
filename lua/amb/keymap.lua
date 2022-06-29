vim.api.nvim_set_keymap('n', '<Space>', '', {}) -- map the leader key
vim.g.mapleader = ' ' -- setting space as leader key

-- telescope
vim.api.nvim_set_keymap('n', '<leader>ff', ":lua require('telescope.builtin').find_files()<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>fg', ":lua require('telescope.builtin').live_grep()<cr>", {noremap = true}) 
vim.api.nvim_set_keymap('n', '<leader>fb', ":lua require('telescope.builtin').buffers()<cr>", {noremap = true}) 
vim.api.nvim_set_keymap('n', '<leader>fh', ":lua require('telescope.builtin').help_tags()<cr>", {noremap = true}) 
