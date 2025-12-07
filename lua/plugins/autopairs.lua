return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            local autopairs = require("nvim-autopairs")
            local Rule      = require("nvim-autopairs.rule")

            autopairs.setup({
                check_ts  = true,  -- Use treesitter for smarter pairing
                ts_config = {
                    lua   = { "string" },
                    ocaml = {"string", "comment"}
                },
            })

            --  - :with_pair() - Controls when to insert the closing keyword
            --  - :with_move() - Allows moving over the closing keyword
            --  - :with_cr()   - Handles Enter key behaviour (adds newline and indents properly)

            -- OCaml custom rules
            -- sig ... end
            autopairs.add_rules({
                Rule("sig", "end", "ocaml")
                    :with_pair(function() return true end)
                    :with_move(function() return true end)
                    :with_cr(function() return true end),
            })

            -- struct ... end
            autopairs.add_rules({
                Rule("struct", "end", "ocaml")
                    :with_pair(function() return true end)
                    :with_move(function() return true end)
                    :with_cr(function() return true end),
            })

            -- begin ... end
            autopairs.add_rules({
                Rule("begin", "end", "ocaml")
                    :with_pair(function() return true end)
                    :with_move(function() return true end)
                    :with_cr(function() return true end),
            })

            -- Remove backtick pairing for OCaml
            autopairs.get_rules('`')[1].not_filetypes = { 'ocaml' }

            -- Integrate with nvim-cmp
            local cmp_autopairs = require("nvim-autopairs.completion.cmp")
            local cmp           = require("cmp")
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
    },
}
