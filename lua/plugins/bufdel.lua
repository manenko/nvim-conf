return {

    {
        'ojroques/nvim-bufdel',
        config = function()
            vim.keymap.set("n", "<leader>bd", ":BufDel<CR>", { desc = "Delete buffer" })
            vim.keymap.set("n", "<leader>bD", ":BufDel!<R>", { desc = "Force delete buffer" })
        end,
    }
}
