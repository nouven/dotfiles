local status, cmp = pcall(require, "cmp")
if (not status) then return end
local lspkind = require 'lspkind'

--local function formatForTailwindCSS(entry, vim_item)
--  if vim_item.kind == 'Color' and entry.completion_item.documentation then
--    local _, _, r, g, b = string.find(entry.completion_item.documentation, '^rgb%((%d+), (%d+), (%d+)')
--    if r then
--      local color = string.format('%02x', r) .. string.format('%02x', g) .. string.format('%02x', b)
--      local group = 'Tw_' .. color
--      if vim.fn.hlID(group) < 1 then
--        vim.api.nvim_set_hl(0, group, { fg = '#' .. color })
--      end
--      vim_item.kind = "●"
--      vim_item.kind_hl_group = group
--      return vim_item
--    end
--  end
--  vim_item.kind = lspkind.symbolic(vim_item.kind) and lspkind.symbolic(vim_item.kind) or vim_item.kind
--  return vim_item
--end

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },

  mapping = cmp.mapping.preset.insert({
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<tab>"] = cmp.mapping.select_next_item(),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
  }),
  window = {
    documentation = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
      winhighlight = "Normal:Normal,FloatBorder:BorderBG,CursorLine:PmenuSel,Search:None",
    },
    completion = cmp.config.window.bordered({
      winhighlight = "Normal:Normal,FloatBorder:BorderBG,CursorLine:PmenuSel,Search:None",
    }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'luasnip' },
  }),

  --experimental = {
  --  ghost_text = false,
  --  native_menu = false,
  --},
  formatting = {
    format = lspkind.cmp_format({
      with_text = true,
      maxwidth = 50,
      transparent = true,
      mode = 'symbol',
      fields = { "kind", "abbr", "menu" },
      before = function(entry, vim_item)
        vim_item.menu = ({
          nvim_lsp = "[LSP]",
          luasnip = "[SNIP]",
          buffer = "[BUFF]",
          path = "[PATH]",
        })[entry.source.name]
        return vim_item
      end,
    }),
  },
})
