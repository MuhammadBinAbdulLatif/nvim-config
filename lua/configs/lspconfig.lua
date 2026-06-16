-- load nvchad defaults
require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"

-- list of servers
local servers = { "html", "cssls", "ts_ls", "pyright", "tailwindcss", "emmet_language_server", "biome", "gopls" }

-- configure servers using the new 0.11 API
for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end

-- enable servers
vim.lsp.enable(servers)
