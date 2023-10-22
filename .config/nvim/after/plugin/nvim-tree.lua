vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 50,
    side = "right"
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})


vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>', {})
