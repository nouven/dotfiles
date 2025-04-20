-- Keymaps for Augment plugin
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
-- Normal mode
map("n", "<leader>ac", ":Augment chat<CR>", { desc = "Augment Chat", silent = true })
map("n", "<leader>an", ":Augment chat-new<CR>", { desc = "Augment New Chat", silent = true })
map("n", "<leader>at", ":Augment chat-toggle<CR>", { desc = "Toggle Augment Chat", silent = true })
map("v", "<leader>ac", ":Augment chat<CR>", { desc = "Augment Chat (Visual)", silent = true })

map("v", "<leader>ac", ":Augment chat<CR>", { desc = "Augment Chat (Visual)", silent = true })

map("i", "<C-y>", "<cmd>call augment#Accept()<CR>", { silent = true })

-- Visual mode
map("v", "<leader>ac", ":Augment chat<CR>", opts)

return {
  "augmentcode/augment.vim",
}
