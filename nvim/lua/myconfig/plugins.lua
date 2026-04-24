--plugins
vim.pack.add({
    { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
    { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
    { src = 'https://github.com/folke/flash.nvim.git' },
    { src = 'https://github.com/ibhagwan/fzf-lua.git' },
})

--Setup and plugin options
require("myconfig/nvim_tree_setup")--nvim tree and devicons
require("myconfig/flash_setup")
require("myconfig/fzf_setup")
