-- Filetype-specific settings

-- C/C++
vim.api.nvim_create_autocmd("FileType", {
    pattern = {"c", "cpp"},
    callback = function(ev)
        -- Switch between source and header
        vim.keymap.set("n", "ga", "<cmd>LspClangdSwitchSourceHeader<CR>",
            { buffer = ev.buf, silent = true, desc = "Switch source/header" })
    end,
})

-- OCaml
vim.api.nvim_create_autocmd("FileType", {
    pattern = {"ocaml", "ocamlinterface"},
    callback = function(ev)
        vim.opt_local.tabstop     = 2
        vim.opt_local.shiftwidth  = 2
        vim.opt_local.expandtab   = true
        vim.opt_local.textwidth   = 80
        vim.opt_local.colorcolumn = "80"

        -- Switch between implementation and interface
        vim.keymap.set("n", "ga", "<cmd>LspOcamllspSwitchImplIntf<CR>",
            { buffer = ev.buf, silent = true, desc = "Switch impl/intf" })
    end,
})

-- Common Lisp
vim.api.nvim_create_autocmd("FileType", {
    pattern = "lisp",
    callback = function()
        vim.opt_local.tabstop     = 2
        vim.opt_local.shiftwidth  = 2
        vim.opt_local.expandtab   = true
        vim.opt_local.textwidth   = 100
        vim.opt_local.colorcolumn = "100"
    end,
})
