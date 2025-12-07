-- Plugin manager setup

-- Bootstrap lazy.nvim (auto-install if not present)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath
    })
end
vim.opt.runtimepath:prepend(lazypath)

-- Load plugins
require("lazy").setup({
    -- Import all plugin files from lua/plugins directory
    spec = {
        { import = "plugins" },
    },
    -- lazy.nvim options
    checker          = { enabled = false }, -- Don't automatically check for updates
    change_detection = { enabled = false }, -- Don't automatically check for configuration file changes
})
