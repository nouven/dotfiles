local status, telescope = pcall(require, "telescope")
if (not status) then return end
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local fb_actions = require "telescope".extensions.file_browser.actions


require('telescope').setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
    file_ignore_patterns = { "node_modules", "dist" },
  },

  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          ["<C-w>"] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd('startinsert')
          end
        },
      },
    },
  },

}
telescope.load_extension("file_browser")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
