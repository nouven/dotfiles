local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({

})

--tailwindcss, tsserver, clangd, lua_ls, astro, cssls, flow, emmet_ls, gopls, sourcekit

lspconfig.setup {
  automatic_installation = true,
  ensure_installed = { "lua_ls", "tsserver", "tailwindcss", "emmet_ls", "gopls", },
}
