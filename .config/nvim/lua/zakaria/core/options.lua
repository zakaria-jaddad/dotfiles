vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- relative number & current line number
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- spacess for tabs
opt.shiftwidth = 2 -- spaces for indent with
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- cmd height
opt.cmdheight = 0

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- setting undeline in the current cursoline
-- opt.cursorline = true

opt.termguicolors = true

-- backspace
opt.backspace = "indent,eol,start"

-- allow clipboard to use system as default
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true
