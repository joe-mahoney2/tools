--Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

--nvim-tree
local nvim_tree_config = {
    sort     = { sorter = "case_sensitive",},
    view     = { width = 30,},
    renderer = { group_empty = true,},
    filters  = { 
        dotfiles = true,
        custom = {
            ".uid",
        },
    },
}

require("nvim-tree").setup(nvim_tree_config)

--web-devicons
local web_devicons_config = {
 default     = true;
 color_icons = true;
 strict      = true;
 variant     = "light|dark";
 blend       = 0;

 override_by_filename = {
  [".gitignore"] = {
    icon  = "",
    color = "#f1502f",
    name  = "Gitignore"
  }
 };

 override_by_extension = {
  ["log"] = {
    icon  = "",
    color = "#81e043",
    name  = "Log"
  }
 };
}

require("nvim-web-devicons").setup(web_devicons_config)
