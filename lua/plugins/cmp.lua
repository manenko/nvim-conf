return {
  "saghen/blink.cmp",

  opts = {
    sources = {
      providers = {
        path = {
          enabled = false,
        },
      },
    },
  },
}

--return {
--  "hrsh7th/nvim-cmp",
--  opts = function(_, opts)
--    local context = require("cmp.config.context")
--
--    -- Override the enabled option to disable completion inside comments.
--    opts.enabled = function()
--      -- Always enable completion in command-line mode.
--      if vim.api.nvim_get_mode().mode == "c" then
--        return true
--      end
--      -- Disable completion if inside a comment (using Treesitter or syntax groups).
--      return not (context.in_treesitter_capture("comment") or context.in_syntax_group("Comment"))
--    end
--
--    return opts
--  end,
--}
