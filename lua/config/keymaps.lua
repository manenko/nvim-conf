-- Key mappings

local keymap = vim.keymap.set

-- Set leader key to space
vim.g.mapleader      = " "
vim.g.maplocalleader = "\\"

-------------------------------------------------------------------------------
-- keymap(mode, keys, action, options)
--
-- - mode: Which mode the mapping applies to
--   - "n" = normal mode
--   - "i" = insert mode
--   - "v" = visual mode
--   - "x" = visual block mode
--   - Can also pass multiple modes like {"n", "v"}
-- - keys: The key combination to press
--   - "<C-h>" = Ctrl+h
--   - "<leader>wh" = leader (space) + w + h
--   - "<S-l>" = Shift+l
--   - "<CR>" = Enter/Return
-- - action: What to execute (can be a vim command string or a Lua function)
-- - options: Table with metadata
--   - desc = description (useful for which-key plugin or help)
--   - silent = don't show command in command line
--   - noremap = don't allow recursive mapping (default is true in vim.keymap.set)
-------------------------------------------------------------------------------

-- Window navigation via Ctrl-{h,j,k,l}
keymap("n", "<C-h>", "<C-w>h", {desc = "Move to left window"})
keymap("n", "<C-j>", "<C-w>j", {desc = "Move to bottom window"})
keymap("n", "<C-k>", "<C-w>k", {desc = "Move to top window"})
keymap("n", "<C-l>", "<C-w>l", {desc = "Move to right window"})

-- Window navigation via <leader>w{h,j,k,l}
keymap("n", "<leader>wh", "<C-w>h", {desc = "Move to left window"})
keymap("n", "<leader>wj", "<C-w>j", {desc = "Move to bottom window"})
keymap("n", "<leader>wk", "<C-w>k", {desc = "Move to top window"})
keymap("n", "<leader>wl", "<C-w>l", {desc = "Move to right window"})

-- Resize windows with Ctrl-{↑,↓,←,→}
keymap("n", "<C-Up>",    ":resize +2<CR>",          {desc = "Increase window height"})
keymap("n", "<C-Down>",  ":resize -2<CR>",          {desc = "Decrease window height"})
keymap("n", "<C-Left>",  ":vertical resize -2<CR>", {desc = "Decrease window width"})
keymap("n", "<C-Right>", ":vertical resize +2<CR>", {desc = "Increase window width"})

-- Buffer navigation via Shift-{l,h}
keymap("n", "<S-l>", ":bnext<CR>",     {desc = "Next buffer"})
keymap("n", "<S-h>", ":bprevious<CR>", {desc = "Previous buffer"})

-- Buffer management
keymap("n", "<leader>bd", ":bdelete<CR>",        {desc = "Delete buffer"})
keymap("n", "<leader>bD", ":bdelete!<CR>",       {desc = "Force delete buffer"})
keymap("n", "<leader>bw", ":bwipeout<CR>",       {desc = "Wipeout buffer"})
keymap("n", "<leader>bn", ":enew<CR>",           {desc = "New buffer"})
keymap("n", "<leader>bb", "<C-^>",               {desc = "Alternate buffer"})
keymap("n", "<leader>bo", ":%bd|e#|bd#<CR>",     {desc = "Close all buffers except current"})
keymap("n", "<leader>ba", ":bufdo bd<CR>",       {desc = "Close all buffers"})

-- Indent selected text via <,>
keymap("v", "<", "<gv", {desc = "Indent left"})
keymap("v", ">", ">gv", {desc = "Indent right"})
-- "gv" means re-select the last visual selection
-- <gv indents left, then re-selects
-- >gv indents right, then re-selects

-- Clear search highlights via Esc in normal mode
keymap("n", "<Esc>", ":noh<CR>", { desc = "Clear search highlights" })

