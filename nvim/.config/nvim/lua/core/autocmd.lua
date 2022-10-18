local cmd = vim.cmd
-- use relativenumber when editing
cmd([[ au InsertEnter * set norelativenumber ]])
cmd([[ au InsertLeave * set relativenumber ]])

-- auto compile when editing the load.lua file
cmd([[autocmd BufWritePost load.lua source <afile> | PackerCompile]])

-- start insert when enter the terminal
cmd("autocmd TermOpen term://* startinsert")

-- filetype with yaml.ansible
cmd("autocmd BufRead,BufNewFile */ansible-*/*.yml set filetype=yaml.ansible")
