require('keybindings')
require('plugins')
require('basic')
require('ricing')
require('lsp')
require('completion')
require('highlight')
require('tree')

vim.cmd([[set mouse=a]])
vim.cmd([[nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>]])

vim.cmd([[inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>]])

vim.cmd([[vnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>]])
