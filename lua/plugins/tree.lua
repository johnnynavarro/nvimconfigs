local g = vim.g

require('nvim-tree').setup{
  filters = {
    custom = {'.git', 'node_modules', '.cache'}
  }
}

