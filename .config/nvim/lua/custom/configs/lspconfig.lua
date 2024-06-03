local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

local tsservers = {"tsserver", "tailwindcss", "eslint"}

for _, lsp in ipairs(tsservers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

local bufnr = vim.api.nvim_get_current_buf()
vim.g.rustaceanvim = function()
  return {
    -- other rustacean settings. --
    server = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  }
end
