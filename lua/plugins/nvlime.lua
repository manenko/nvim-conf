-- Nvlime - Common Lisp development environment (SLIME-like)
return {
    {
        "monkoose/nvlime",
        dependencies = {
            "monkoose/parsley",
        },
        ft = { "lisp" },
        config = function()
            vim.g.nvlime_config = {
                cmp = {
                    enabled = true,
                },


                -- Main window positioning (REPL, etc.)
                main_window = {
                    position = "left",  -- Show on left side
                },

                -- Floating window styling
                floating_window = {
                    border = "rounded",  -- Rounded borders
                    scroll_step = 3,     -- Lines to scroll with C-n/C-p
                },

                -- Autodoc (show function signatures as you type)
                autodoc = {
                    enabled = true,
                    max_level = 5,    -- Max nesting level for arglist
                    max_lines = 30,   -- Max lines to show
                },

                -- Input history
                input_history_limit = 100,

                -- Compiler policy
                compiler_policy = {
                    DEBUG = 3,  -- Maximum debug info
                    SPEED = 0,  -- Don't optimize for speed
                },

                -- Swank contribs (SLIME protocol extensions)
                contribs = {
                    "SWANK-TRACE-DIALOG",  -- Interactively trace functions, and view the trace results.
                    "SWANK-ASDF",          -- 
                    "SWANK-REPL",          -- The default REPL implementation.
                    "SWANK-PRESENTATIONS", -- Turn evaluation results in the REPL into presentations.
                    "SWANK-FUZZY",         -- Enable fuzzy search in completions.
                    "SWANK-ARGLISTS",      -- Show a fancy arglist.
                },
            }
        end,
    },
}
