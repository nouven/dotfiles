local status, bufferline = pcall(require, "bufferline")
if (not status) then return end
vim.opt.termguicolors = true
require("bufferline").setup({})
