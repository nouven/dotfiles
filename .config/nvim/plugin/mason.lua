local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({

})

lspconfig.setup {
  automatic_installation = false,
  ensure_installed = {
    -- "lua-language-server",
    -- "typescript-language-server",
    -- "tailwindcss",
    -- "emmet_ls",
    -- "gopls",
    -- "clangd",
    -- "clang-format",
    -- "pyright"
    -- "codelldb"
  }
}
