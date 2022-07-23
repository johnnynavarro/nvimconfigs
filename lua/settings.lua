local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- Leader
g.mapleader = '\\'
g.vim_json_syntax_conceal= 0

-- SuperTab setup
g.SuperTabDefaultCompletionType = '<C-n>'

-- General
opt.compatible = false
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.swapfile = false
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 240

-- Theme
opt.termguicolors = true
cmd [[colorscheme dracula]]

-- Editor
opt.number = true
opt.wrap = false
opt.signcolumn = 'yes'
opt.showmatch = true
opt.showmode = true 
opt.foldmethod = 'marker'
opt.splitright = true
opt.splitbelow = true
opt.conceallevel = 0
opt.colorcolumn = '80'
opt.cursorline = true
opt.scrolloff = 10
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.list = true
opt.listchars = { eol = '¬' }
opt.shortmess:append {c = true}
opt.whichwrap:append {
  ['<'] = true,
  ['>'] = true,
  [','] = true,
  h = true,
  l = true
}

-- Terminal
cmd [[command! Term :botright split term://$SHELL]]
cmd [[
  autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
  autocmd TermOpen * startinsert
  autocmd BufLeave term://* stopinsert
]]

-- let g:floaterm_title='>( /ᐠ｡ꞈ｡ᐟ\ )<'

-- Floaterminal setup
cmd [[
  let g:floaterm_keymap_new = '<Leader>z'
  let g:floaterm_keymap_prev = '<Leader>p'
  let g:floaterm_keymap_next = '<Leader>n'
  let g:floaterm_keymap_toggle = '<Leader>t'
  let g:floaterm_keymap_kill = '<Leader>k'
  let g:floaterm_title='>( TERMINAL )<'

]]

-- Complet COC- ENTER


cmd[[
  inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  inoremap <silent><expr><CR> pumvisible() ? coc#_select_confirm()
    \: "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"
]]



