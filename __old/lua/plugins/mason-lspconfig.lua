return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      automatic_enable = {
        exclude = { "ocaml-lsp", "ocamllsp" },
      },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
}
