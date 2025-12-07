return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "v0.2.0",
        dependencies =  { 
            "nvim-lua/plenary.nvim"
        },

        config = function()
            local telescope = require("telescope")
            local builtin = require("telescope.builtin")

            telescope.setup({
                defaults = {
                    -- Default configuration
                    sorting_strategy = "ascending",
                    layout_config = {
                        horizontal = {
                            prompt_position = "top",
                            preview_width   = 0.55,
                        },
                        width  = 0.87,
                        height = 0.80,
                    },
                },
            })

            telescope.load_extension("fzf")

            -- Keymaps
            local keymap = vim.keymap.set
            keymap("n", "<leader>ff", builtin.find_files,           { desc = "Find files" })
            keymap("n", "<leader>fg", builtin.live_grep,            { desc = "Live grep" })
            keymap("n", "<leader>fb", builtin.buffers,              { desc = "Find buffers" })
            keymap("n", "<leader>fh", builtin.help_tags,            { desc = "Help tags" })
            keymap("n", "<leader>fo", builtin.oldfiles,             { desc = "Recent files" })
            keymap("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "Document symbols" })
            keymap("n", "<leader>fw", builtin.grep_string,          { desc = "Grep word under cursor" })
        end,
    }
}
