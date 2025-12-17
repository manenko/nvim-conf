return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",  -- Load after startup
        config = function()
            local wk = require("which-key")

            wk.setup({
                -- Configuration here
                delay = 500,  -- Delay before showing popup (ms)
            })

            -- Register key groups
            wk.add({
                { "<leader>f", group = "Find" },
                { "<leader>g", group = "Git" },
                { "<leader>w", group = "Window" },
                { "<leader>c", group = "Code" },
                { "<leader>b", group = "Buffer" },
            })

            -- Nvlime (Common Lisp) key groups - register on FileType
--            vim.api.nvim_create_autocmd("FileType", {
--                pattern = "lisp",
--                callback = function()
--                    wk.add({
--                        { "\\c", group = "Connection" },
--                        { "\\r", group = "Server" },
--                        { "\\s", group = "Send/Eval" },
--                        { "\\i", group = "Inspect" },
--                        { "\\d", group = "Documentation" },
--                        { "\\x", group = "Xref" },
--                        { "\\m", group = "Macro" },
--                        { "\\w", group = "Window" },
--                    })
--                end,
--            })
        end,
    },
}
