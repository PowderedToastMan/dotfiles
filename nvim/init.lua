-----------------------------------------------------------
-- General
-----------------------------------------------------------
vim.opt.mouse = 'a'                 -- Enable mouse support
vim.opt.clipboard = 'unnamedplus'   -- Copy/paste to system clipboard
vim.opt.swapfile = false            -- Don't use swapfile

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
vim.opt.number = true               -- Show line number
vim.opt.showmatch = true            -- Highlight matching parenthesis
vim.opt.foldmethod = 'marker'       -- Enable folding (default 'foldmarker')
--vim.opt.colorcolumn = '80'        -- Line lenght marker at 80 columns
vim.opt.splitright = true           -- Vertical split to the right
vim.opt.splitbelow = true           -- Orizontal split to the bottom
vim.opt.ignorecase = true           -- Ignore case letters when search
vim.opt.smartcase = true            -- Ignore lowercase for the whole pattern
vim.opt.linebreak = true            -- Wrap on word boundary

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
vim.opt.hidden = true               -- Enable background buffers
vim.opt.history = 100               -- Remember N lines in history
vim.opt.lazyredraw = true           -- Faster scrolling
vim.opt.synmaxcol = 240             -- Max column for syntax highlight

-- Remove whitespace on save
vim.cmd [[au BufWritePre * :%s/\s\+$//e]]

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
vim.opt.expandtab = true            -- Use spaces instead of tabs
vim.opt.shiftwidth = 2              -- Shift 4 spaces when tab
vim.opt.tabstop = 2                 -- 1 tab == 4 spaces
vim.opt.softtabstop = 2
vim.opt.smartindent = true          -- Autoindent new lines

-----------------------------------------------------------
-- Keybindings
-----------------------------------------------------------
local map = require("utils").map
map('n', '<F2>', ':w<CR>')
map('n', '<F3>', 'yiW')
map('n', '<F4>', '0y$')

require("plugins")
