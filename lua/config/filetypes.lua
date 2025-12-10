-- Filetype-specific settings

-- OCaml
vim.api.nvim_create_autocmd("FileType", {
    pattern = "ocaml",
    callback = function()
        vim.opt_local.tabstop     = 2
        vim.opt_local.shiftwidth  = 2
        vim.opt_local.expandtab   = true
        vim.opt_local.textwidth   = 80
        vim.opt_local.colorcolumn = "80"
    end,
})

-- OCaml interface files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "ocamlinterface",
    callback = function()
        vim.opt_local.tabstop     = 2
        vim.opt_local.shiftwidth  = 2
        vim.opt_local.expandtab   = true
        vim.opt_local.textwidth   = 80
        vim.opt_local.colorcolumn = "80"
    end,
})
