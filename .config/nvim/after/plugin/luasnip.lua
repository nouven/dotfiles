local status, ls = pcall(require, "luasnip")
if (not status) then return end
local snip = ls.parser.parse_snippet

-- for "all" filetypes create snippet for "func"
ls.add_snippets("typescript", {
  snip(
    'db',
    'console.log(\'<=========>    \',${1})'
  )
})

ls.add_snippets("javascript", {
  snip(
    'db',
    'console.log(\'<=========>    \',${1})'
  )
})

ls.add_snippets("typescript", {
  snip(
    'jlog',
    'console.log(\'<=========>    \',JSON.stringify(${1}, null, 2))'
  )
})

ls.add_snippets("cpp", {
  snip(
    'db',
    "cout << \"${s2} ::\" << ${s2} << endl;"
  )
})
