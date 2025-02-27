return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "regen100/cmake-language-server",
    },
    ---@class PluginLspOpts
    opts = {
      servers = {
        cmake = {
          buildDirectory = "_build",
        },
      },
    },
  },
}
