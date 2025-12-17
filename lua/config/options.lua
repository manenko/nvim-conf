-- Basic Neovim options

local opt = vim.opt

-- Line numbers
opt.number         = true          -- Show absolute line number on current line
opt.relativenumber = true          -- Show relative line numbers

-- Tabs and indentation
opt.tabstop        = 4             -- Number of spaces a tab counts for
opt.shiftwidth     = 4             -- Number of spaces for each indentation level
opt.expandtab      = true          -- Convert tabs to spaces
opt.autoindent     = true          -- Copy indent from current line when staring new line

-- Line wrapping
opt.wrap           = false         -- Don't wrap lines

-- Search
opt.ignorecase     = true          -- Ignore case when searching
opt.smartcase      = true          -- Override ignorecase if search contains upper case characters

-- Visual column
opt.colorcolumn    = "80"          -- Show vertical line at column 80

-- Appearance
opt.termguicolors  = true          -- Enable 24-bit RGB colours
opt.signcolumn     = "yes"         -- Always show sign column to prevent text shifting

-- Behaviour
opt.mouse          = "a"           -- Enable mouse support
opt.clipboard      = "unnamedplus" -- Use system clipboard
opt.splitright     = true          -- Vertical splits open to the right
opt.splitbelow     = true          -- Horizontal splits open below

-- Spell check
--opt.spell          = true          -- Enable spell check
--opt.spelllang      = "en_gb"       -- Use Great Britain English dictionary
