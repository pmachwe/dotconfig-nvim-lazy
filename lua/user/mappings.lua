-- Basic mappings

local opts = { noremap = true, silent = true }

vim.g.mapleader = ','

vim.api.nvim_set_keymap('i', 'jj', '<Esc>', opts)
vim.api.nvim_set_keymap('n', '<Leader>w', ':update<CR>', opts)
-- These 2 cause editor to pause after , in insert mode
-- vim.api.nvim_set_keymap('i', '<Leader>w', '<Esc>:update<CR>', opts)
-- vim.api.nvim_set_keymap('i', '<Leader>z', '<Esc>', opts)
vim.api.nvim_set_keymap('n', '<Leader>q', ':quit<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader><Leader>s', ':source %<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader><Leader>i', ':edit ~/.config/nvim/init.lua<CR>', opts)

vim.api.nvim_set_keymap('n', '<Leader>.', ':b#<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>k', ':bd<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>o', ':only<CR>', opts)

vim.api.nvim_set_keymap('n', 'U', '<C-u>', opts)
vim.api.nvim_set_keymap('n', 'D', '<C-d>', opts)

vim.api.nvim_set_keymap('', '<A-l>', '<C-w>l', opts)
vim.api.nvim_set_keymap('', '<A-k>', '<C-w>k', opts)
vim.api.nvim_set_keymap('', '<A-j>', '<C-w>j', opts)
vim.api.nvim_set_keymap('', '<A-h>', '<C-w>h', opts)

-- Quickfix
vim.api.nvim_set_keymap('n', '<leader>qo', ':copen<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qc', ':cclose<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qn', ':cnext<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qp', ':cprevious<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>ql', ':clast<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qf', ':cfirst<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>qh', ':chistory<CR>', opts)
vim.api.nvim_set_keymap('n', '<c-n>', ':cnext<CR>', opts)
vim.api.nvim_set_keymap('n', '<c-p>', ':cprevious<CR>', opts)

-- ToggleTerm
vim.api.nvim_set_keymap('n', '\\t', ':ToggleTerm<CR>', opts)
vim.api.nvim_set_keymap('t', '<C-\\><C-n>\\t', ':ToggleTerm<CR>', opts)
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', opts)

-- Paste and indent
vim.api.nvim_set_keymap('n', 'p', 'p=`]', opts)

-- Move between buffers (inspired by Lazyvim)
vim.api.nvim_set_keymap('n', 'H', ':bnext<CR>', opts)
vim.api.nvim_set_keymap('n', 'L', ':bprevious<CR>', opts)
