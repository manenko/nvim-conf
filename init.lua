-- Main entry point for Neovim configuration

-- Load basic settings
require("config.options")

-- Load filetype-specific settings
require("config.filetypes")

-- Load keymaps
require("config.keymaps")

-- Bootstrap and load plugins
require("config.lazy")

