
-- enable line numbers 
vim.opt.number = true

-- with of a tab 
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- use number of spaces to insert a tab 
vim.opt.expandtab = true 
vim.wo.wrap = false


-- configurations
vim.api.nvim_set_keymap('n', '<c-s>', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', '<c-s>', '<c-o>:w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-e>', ':Neotree toggle<CR>',{noremap = true} )

-- colors
vim.o.termguicolors = true

