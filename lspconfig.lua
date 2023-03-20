local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local servers = { "jedi_language_server", "tsserver", "cssls", "html" }

lspconfig.sourcery.setup {
    init_options = {
        editor_version = 'vim',
        extension_version = 'vim.lsp',
        token = os.getenv("SOURCERY_KEY")
    }
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
