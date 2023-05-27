local status, ls = pcall(require, "luasnip")
if (not status) then return end
local snip = ls.parser.parse_snippet

-- for "all" filetypes create snippet for "func"
ls.add_snippets("all", {
  snip(
    'db',
    'console.log(\'<=========>\',\t${1})'
  )
})
