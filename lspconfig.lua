local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "jedi_language_server", "tsserver", "cssls", "html" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.sourcery.setup {
    init_options = {
        editor_version = 'vim',
        extension_version = 'vim.lsp',
        token = os.getenv("SOURCERY_KEY")
    }
}
