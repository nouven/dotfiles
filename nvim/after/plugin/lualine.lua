local status, lualine = pcall(require, "lualine")
if (not status) then return end


local custom_gruvbox = require 'lualine.themes.gruvbox'
-- Change the background of lualine_c section for normal mode
custom_gruvbox.normal.a.bg = '#00334d'
custom_gruvbox.normal.a.fg = 'lightgray'
custom_gruvbox.normal.b.bg = 'none'
custom_gruvbox.normal.c.bg = 'none'
custom_gruvbox.insert.b.bg = 'none'
custom_gruvbox.insert.c.bg = 'none'
custom_gruvbox.command.b.bg = 'none'
custom_gruvbox.command.c.bg = 'none'
custom_gruvbox.visual.b.bg = 'none'
custom_gruvbox.visual.c.bg = 'none'


lualine.setup {
  options = {
    icons_enabled = true,
    theme = custom_gruvbox,
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0            -- 0 = just filename, 1 = relative path, 2 = absolute path
    } },
    lualine_x = {
      {
        'diagnostics',
        sources = { "nvim_diagnostic" },
        symbols = {
          error = ' ',
          warn = ' ',
          info = ' ',
          hint = ' '
        }
      },
      'encoding',
      'filetype'
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1            -- 0 = just filename, 1 = relative path, 2 = absolute path
    } },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = { 'fugitive' }
}
