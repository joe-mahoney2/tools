--plugins
vim.pack.add({
    { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
    { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
    { src = 'https://github.com/folke/flash.nvim.git' },
    { src = 'https://github.com/ibhagwan/fzf-lua.git' },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter.git' },
    { src = 'https://github.com/numToStr/Comment.nvim.git' },
    { src = 'https://github.com/lewis6991/gitsigns.nvim.git' },
--    { src = '' },
})

--Setup and plugin options
require("myconfig/nvim_tree_setup")--nvim tree and devicons
require("myconfig/flash_setup")
require("myconfig/fzf_setup")
require("myconfig/comment_setup")

--Lsp stuff
require("myconfig/lsp_config")
require("myconfig/treesitter_setup")

--Git
require("myconfig/gitsigns_setup")
