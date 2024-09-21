local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "o9n.plugin" }, { import = "o9n.plugin.lsp" }, { import = "o9n.plugin.dap" } }, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})

local status, ls = pcall(require, "luasnip")
if not status then
  return
end
local snip = ls.parser.parse_snippet

-- for "all" filetypes create snippet for "func"
ls.add_snippets("typescript", {
  snip("db", "console.log('<=========>    ',${1})"),
})

ls.add_snippets("javascript", {
  snip("db", "console.log('<=========>    ',${1})"),
})

ls.add_snippets("typescript", {
  snip("jlog", "console.log('<=========>    ${1}',JSON.stringify(${1}, null, 2))"),
})

ls.add_snippets("cpp", {
  snip("db", 'cout << "${s2} ::" << ${s2} << endl;'),
})
