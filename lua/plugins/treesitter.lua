return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate", -- Auto-update parsers after install
        config = function()
            require("nvim-treesitter.configs").setup({
                -- Install parsers for these languages
                ensure_installed = {
                    "c",
                    "cpp",
                    "rust",
                    "clojure",
                    "commonlisp",
                    "ocaml",
                    "cmake",
                    "markdown",
                    "markdown_inline",
                    "bash",
                    "lua",
                    "vim",
                    "vimdoc",
                },

                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,

                -- Automatically install missing parsers when entering buffer
                auto_install = true,

                -- Enable syntax highlighting
                highlight = {
                    enable = true,
                    -- Disable highlighting for large files (performance)
                    disable = function(lang, buf)
                        local max_filesize = 100 * 1024 -- 100 KB
                        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                        if ok and stats and stats.size > max_filesize then
                            return true
                        end
                    end,
                },

                -- Enable indentation based on treesitter
                indent = {
                    enable = true,
                },
            })
        end
    }
}
