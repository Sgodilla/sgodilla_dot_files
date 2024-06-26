local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")

local tsservers = {"tsserver", "tailwindcss", "eslint", "pyright"}

for _, lsp in ipairs(tsservers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

vim.g.rustaceanvim = function()
  return {
    -- other rustacean settings. --
    server = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  }
end
