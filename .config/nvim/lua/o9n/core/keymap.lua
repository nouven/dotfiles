local keymap = vim.keymap -- for conciseness

-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
--
--

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
vim.api.nvim_set_keymap("n", "s", "<Nop>", { noremap = true, silent = true })
keymap.set("n", "sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "ss", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally

keymap.set("n", "sh", "<C-w>h", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "sj", "<C-w>j", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "sk", "<C-w>k", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "sl", "<C-w>l", { desc = "Split window horizontally" }) -- split window horizontally

keymap.set("n", "se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
