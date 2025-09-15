return {
  "saghen/blink.cmp",

  opts = {
    completion = {
      ghost_text = {
        enabled = false,
      },
    },
    fuzzy = {
      sorts = {
        "exact",
        -- defaults
        "score",
        "sort_text",
      },
    },
    sources = {
      default = { "lsp" },
      providers = {
        path = {
          enabled = false,
        },
        buffer = {
          enabled = false,
        },
        snippets = {
          enabled = false,
        },
        lazydev = {
          enabled = false,
        },
        lsp = {
          name = "LSP",
          module = "blink.cmp.sources.lsp",
          -- Exclude keywords/constants from autocomplete
          transform_items = function(_, items)
            return vim.tbl_filter(function(item)
              return item.kind ~= require("blink.cmp.types").CompletionItemKind.Keyword
            end, items)
          end,
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
