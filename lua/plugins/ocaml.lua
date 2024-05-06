return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "ocaml/ocaml-lsp",
    },
    ---@class PluginLspOpts
    opts = {
      servers = {
        ocamllsp = {},
      },
    },
  },
}
