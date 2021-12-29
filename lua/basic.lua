-- indent
local bo = vim.bo
local TAB_WIDTH = 4
bo.tabstop = TAB_WIDTH
bo.shiftwidth = TAB_WIDTH
bo.expandtab = true

-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'

-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
