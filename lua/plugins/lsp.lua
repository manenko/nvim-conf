return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Global LSP settings
            vim.diagnostic.config({
                virtual_text     = true,  -- Show diagnostics as virtual text
                signs            = true,  -- Show signs in sign column
                underline        = true,  -- Underline problematic code
                update_in_insert = false, -- Don't update diagnostics while typing
                severity_sort    = true,  -- Sort by severity
            })

            -- Disable inlay hints globally
            vim.lsp.inlay_hint.enable(false)

            -- LSP keymaps (applied when LSP attaches to a buffer)
            vim.api.nvim_create_autocmd("LspAttach", {
                group    = vim.api.nvim_create_augroup("UserLspConfig", {}),
                callback = function(ev)
                    local opts = { buffer = ev.buf, silent = true }
                    local keymap = vim.keymap.set

                    -- Keymaps
                    keymap("n", "gd",         vim.lsp.buf.definition,     vim.tbl_extend("force", opts, { desc = "Go to definition" }))
                    keymap("n", "gD",         vim.lsp.buf.declaration,    vim.tbl_extend("force", opts, { desc = "Go to declaration" }))
                    keymap("n", "gi",         vim.lsp.buf.implementation, vim.tbl_extend("force", opts, { desc = "Go to implementation" }))
                    keymap("n", "gr",         vim.lsp.buf.references,     vim.tbl_extend("force", opts, { desc = "Show references" }))
                    keymap("n", "K",          vim.lsp.buf.hover,          vim.tbl_extend("force", opts, { desc = "Hover documentation" }))
                    keymap("n", "<leader>rn", vim.lsp.buf.rename,         vim.tbl_extend("force", opts, { desc = "Rename symbol" }))
                    keymap("n", "<leader>ca", vim.lsp.buf.code_action,    vim.tbl_extend("force", opts, { desc = "Code action" }))
                    keymap("n", "[d",         vim.diagnostic.goto_prev,   vim.tbl_extend("force", opts, { desc = "Previous diagnostic" }))
                    keymap("n", "]d",         vim.diagnostic.goto_next,   vim.tbl_extend("force", opts, { desc = "Next diagnostic" }))

                    -- Format on save
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        buffer = ev.buf,
                        callback = function()
                            vim.lsp.buf.format({ async = false })
                        end,
                    })
                end,
            })

            -- LSP capabilities (enable completion support)
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            -- Update all vim.lsp.config() calls to include capabilities
            vim.lsp.config('*', {
                capabilities = capabilities,
            })

            -- Language server configurations

            -- Rust (with clippy linting)
            vim.lsp.config('rust_analyzer', {
                settings = {
                    ['rust-analyzer'] = {
                        checkOnSave = {
                            command = "clippy",
                        },
                    },
                },
            })

            -- Lua
            vim.lsp.config('lua_ls', {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { 'vim' }
                        },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                        },
                        telemetry = {
                            enable = false,
                        },
                    },
                },
            })

            -- Enable language servers
            vim.lsp.enable('clangd')        -- C and C++
            vim.lsp.enable('rust_analyzer') -- Rust
            vim.lsp.enable('clojure_lsp')   -- Clojure
            vim.lsp.enable('ocamllsp')      -- OCaml
            vim.lsp.enable('cmake')         -- CMake
            vim.lsp.enable('bashls')        -- Bash
            vim.lsp.enable('lua_ls')        -- Lua
        end
    }
}
