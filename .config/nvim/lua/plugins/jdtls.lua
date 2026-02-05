return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      jdtls = {
        settings = {
          java = {
            project = {
              referencedLibraries = {
                "resources/**/*.jar",
                "lib/**/*.jar",
              },
            },
          },
        },
      },
    },
  },
}
