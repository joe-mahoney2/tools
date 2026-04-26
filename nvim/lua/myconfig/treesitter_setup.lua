--:h nvim-treesitter-commands
require('nvim-treesitter').install { 
    'bash',
    'c',
    'cpp',
    'make',
    'cmake',
    'csv',
    'gdscript',
    'lua',
    'python',
    'rust',
    'vim',
    'gdshader',
--    '',
}

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 
      '*.lua', 
      '*.c', 
      '*.cpp', 
      '*.gd' ,
--      ''
  },
  callback = function()
    vim.treesitter.start()
  end,
})
