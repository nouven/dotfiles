local status, gruvbox = pcall(require, 'gruvbox')
if (not status) then return end
gruvbox.setup({
  undercurl = true,
  underline = true,
  bold = false,
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = true,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = false, -- invert background for search, diffs, statuslines and errors
  contrast = "",   -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})


vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
