-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs = 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.wrap = false

-- Searching
vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.termguicolors = true

vim.opt.colorcolumn = "80"

-- Force latex
vim.g.tex_flavor = "latex"