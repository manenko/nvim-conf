return {
    { 
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp", -- LSP completion source
            "hrsh7th/cmp-buffer",   -- Buffer text completion
        },
        config = function()
            local cmp = require("cmp")

            cmp.setup({

                enabled = function()
                    local disabled = false
                    local context = require("cmp.config.context")

                    -- Disable completion:
                    -- - in prompt buffers
                    -- - during macro recording/execution
                    -- - in comments
                    disabled = disabled or (vim.api.nvim_get_option_value('buftype', { buf = 0 }) == 'prompt')
                    disabled = disabled or (vim.fn.reg_recording() ~= '')
                    disabled = disabled or (vim.fn.reg_executing() ~= '')
                    disabled = disabled or context.in_treesitter_capture('comment')
                    disabled = disabled or context.in_syntax_group("Comment")
                    return not disabled
                end,

                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"]     = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"]     = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),                  -- Trigger completion
                    ["<C-e>"]     = cmp.mapping.abort(),                     -- Close completion
                    ["<CR>"]      = cmp.mapping.confirm({ select = false }), -- Accept selected item

                    -- Tab/Shift-Tab to navigate completion menu
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        else
                            fallback()
                        end
                    end, { "i", "s" }),

                    ["<S-Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                }),

                sources = cmp.config.sources(
                    {
                        { name = "nvim_lsp" },
                        { name = "nvlime" },
                    },
                    {
                        { name = "buffer" },
                    }),
            })
        end,
    },
}
