--vim.api.command('hi Normal guibg=none')
--vim.api.command("hi Pmenu guibg=none guifg=red")
--vim.api.command("hi LineNr guibg=none")
--vim.api.nvim_command("hi PmenuSel guibg=none guifg=cyan")
--vim.api.nvim_command("hi PmenuSbar guibg=none guifg=none")
--vim.api.command("hi PmenuThumb guibg=none guifg=none")


--vim.api.nvim_set_hl(0, "Pmenu", { ctermbg = 0, bg = '', fg = 'red' })
--vim.api.nvim_set_hl(0, "PmenuSel", { ctermbg = 0, bg = 'none', fg = 'cyan' })
--vim.api.nvim_set_hl(0, "PmenuSbar", { ctermbg = 0, bg = 'none', fg = 'yellow' })



vim.cmd [[
  hi PmenuSel guibg=none guifg=cyan
  hi Pmenu guibg=none guifg=red
  hi LineNr guibg=none
]]


--set termguicolors
--hi DiagnosticError guifg=Red
--hi DiagnosticWarn  guifg=DarkOrange
--hi DiagnosticInfo  guifg=Yellow
--hi DiagnosticHint  guifg=Cyan
--set signcolumn=number
--set signcolumn=number
