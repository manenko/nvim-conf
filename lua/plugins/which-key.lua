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
            })
        end,
    },
}
