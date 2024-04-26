function keymap()
  local keymap = vim.keymap
  local opt = { silent = true }

  keymap.set("n", "<A-1>", ":BufferLineGoToBuffer 1 <CR>", opt)
  keymap.set("n", "<A-2>", ":BufferLineGoToBuffer 2 <CR>", opt)
  keymap.set("n", "<A-3>", ":BufferLineGoToBuffer 3 <CR>", opt)
  keymap.set("n", "<A-4>", ":BufferLineGoToBuffer 4 <CR>", opt)
  keymap.set("n", "<A-5>", ":BufferLineGoToBuffer 5 <CR>", opt)
  keymap.set("n", "<A-6>", ":BufferLineGoToBuffer 6 <CR>", opt)
  keymap.set("n", "<A-7>", ":BufferLineGoToBuffer 7 <CR>", opt)
  keymap.set("n", "<A-8>", ":BufferLineGoToBuffer 8 <CR>", opt)
  keymap.set("n", "<A-9>", ":BufferLineGoToBuffer 9 <CR>", opt)

  -- Define the function to close the current buffer
  vim.api.nvim_set_keymap(
    "n",
    "<A-c>",
    ":lua vim.api.nvim_buf_delete(vim.api.nvim_get_current_buf(), { force = false})<CR>",
    { silent = true }
  )
end

function config()
  require("bufferline").setup({})
end

return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",

  opts = {
    options = {
      mode = "tabs",
      separator_style = "slant",
    },
  },

  config = config,
  keymap(),
}
