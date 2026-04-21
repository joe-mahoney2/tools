-- Map leader
vim.g.mapleader = " "

vim.keymap.set("i", "jj", "<Esc>", { noremap = true})

--Window stuff
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

--Ignore
vim.keymap.set({'n', 'i'}, '<C-v>', '<C-v>', { noremap = true })
