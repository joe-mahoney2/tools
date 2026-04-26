vim.lsp.config('clangd', {
  cmd = { 'clangd' },
})

vim.lsp.enable('clangd')

-- Godot GDScript LSP
vim.lsp.config('gdscript', {
  cmd = { 'ncat', '127.0.0.1', '6005' },  -- connect to Godot's LSP server
  filetypes = { 'gdscript' },
  root_markers = { 'project.godot' },
})
vim.lsp.enable('gdscript')
