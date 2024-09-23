local vim = vim
local opt = vim.opt
vim.api.nvim_command("packadd termdebug")
vim.g.termdebug_wide = 1
vim.g.background = "dark"
opt.path = opt.path + "**"
opt.backup = false
opt.cmdheight = 1
opt.timeoutlen = 100
opt.undofile = true
opt.writebackup = false
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.relativenumber = true
opt.ruler = true
opt.numberwidth = 2
opt.scrolloff = 4
opt.sidescrolloff = 4
opt.colorcolumn = "80"
opt.fileformats = "unix,dos"
opt.inccommand = "split"
opt.confirm = true
opt.visualbell = false
opt.autowrite = true
opt.virtualedit = "block"
opt.number = true
opt.wildmenu = true
vim.g.netrw_keepdir = 0
vim.g.netrw_winsize = 12
vim.g.netrw_banner = 0
vim.g.netrw_localcopydircmd = 'cp -avr'
vim.g.termguicolors = true

vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 1
vim.g.mkdp_refresh_slow = 1
vim.g.mkdp_browser = ''
vim.g.mkdp_combine_preview = 1

vim.opt.conceallevel = 3

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
