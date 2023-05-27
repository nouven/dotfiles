local status, bufferline = pcall(require, "bufferline")
if (not status) then return end


vim.opt.termguicolors = true
require("bufferline").setup({})



vim.keymap.set('n', '<A-1>', ':BufferLineGoToBuffer 1 <CR>', { silent = true })
vim.keymap.set('n', '<A-2>', ':BufferLineGoToBuffer 2 <CR>', { silent = true })
vim.keymap.set('n', '<A-3>', ':BufferLineGoToBuffer 3 <CR>', { silent = true })
vim.keymap.set('n', '<A-4>', ':BufferLineGoToBuffer 4 <CR>', { silent = true })
vim.keymap.set('n', '<A-5>', ':BufferLineGoToBuffer 5 <CR>', { silent = true })
vim.keymap.set('n', '<A-6>', ':BufferLineGoToBuffer 6 <CR>', { silent = true })
vim.keymap.set('n', '<A-7>', ':BufferLineGoToBuffer 7 <CR>', { silent = true })
vim.keymap.set('n', '<A-8>', ':BufferLineGoToBuffer 8 <CR>', { silent = true })
vim.keymap.set('n', '<A-9>', ':BufferLineGoToBuffer 9 <CR>', { silent = true })

-- Define the function to close the current buffer
vim.api.nvim_set_keymap('n', '<A-c>',
  ':lua vim.api.nvim_buf_delete(vim.api.nvim_get_current_buf(), { force = false})<CR>', { silent = true })
