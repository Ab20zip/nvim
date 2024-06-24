--[[
This program is free software. It comes without any warranty, to the extent permitted by applicable law.
You can redistribute it and/or modify it under the terms of the Do What The Fuck You Want To Public License,
Version 2, as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.
]]

local on_attach = require('nvchad.configs.lspconfig').on_attach
local on_init = require('nvchad.configs.lspconfig').on_init
local capabilities = require('nvchad.configs.lspconfig').capabilities

local lspconfig = require 'lspconfig'
local servers = {
  'html',
  'cssls',
  'gopls',
  'svelte',
  'pyright',
  'emmet_language_server',
  'nixd',
  'markdown_oxide',
  'gdscript',
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}
