local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "jedi_language_server", "astro" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.sourcery.setup {
  init_options = {
    editor_version = "vim",
    extension_version = "vim.lsp",
    token = os.getenv "SOURCERY_KEY",
  },
}
--
-- lspconfig.pyright.setup { blabla}
