local utils = require('utils')
utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')           -- jk to escape
utils.map('n', '<tab>', ':bn<cr>')
utils.map('n', '<S-TAB>', ':bp<cr>')
utils.map('n', '<leader>e', ':NvimTreeToggle<cr>')
utils.map('t', '<Esc>', '<C-\\><C-n>')
vim.api.nvim_set_keymap('n', '<leader>z', '<cmd>Centerpad<cr>', { silent = true, noremap = true })




require'FTerm'.setup({
    dimensions  = {
        height = 0.8,
        width = 0.8,
        x = 0.5,
        y = 0.5
    },
    border = 'single' -- or 'double'
})

-- Keybinding
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', '<leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)

