return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        on_attach = function(client, bufnr)
          client.server_capabilities.documentFormattingProvider = false
        end,
      },
    },
  },
}
