local fzf = require("fzf-lua")

vim.keymap.set("n", "<leader>ff", fzf.files,     {desc ="find file"})
vim.keymap.set("n", "<leader>fg", fzf.live_grep, {desc ="grep file"})
vim.keymap.set("n", "<leader>fb", fzf.buffers,   {desc ="buffers"})
vim.keymap.set("n", "<leader>fh", fzf.help_tags, {desc ="tags"})
