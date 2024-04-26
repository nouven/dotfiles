function config()
  -- Default options:
  require("gruvbox").setup({
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = false,
    bold = true,
    italic = {
      strings = true,
      emphasis = true,
      comments = true,
      operators = false,
      folds = true,
    },
    strikethrough = true,
    invert_selection = true,
    invert_signs = false,
    invert_tabline = true,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = true,
  })
  vim.o.background = "dark"
  vim.cmd("colorscheme gruvbox")
end

return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = config,
}
