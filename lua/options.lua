local vim = vim
require("_neovide") -- lua/_neovide.lua
vim.lsp.set_log_level("ERROR")
vim.opt.list = true
vim.opt.listchars:append("space: ")
vim.opt.listchars:append("eol:↴")
vim.opt.backup = false
vim.opt.cmdheight = 1
vim.g.background = "dark"
-- vim.g.colorscheme = 'nord'
vim.g.mapleader = ","
vim.g.maplocalleader = ";"
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = { "menu", "menuone", "noselect" }
-- vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.hlsearch = true        -- highlight all matches on previous search pattern
vim.opt.ignorecase = true      -- ignore case in search patterns
vim.opt.mouse = "a"            -- allow the mouse to be used in neovim
vim.opt.pumheight = 10         -- pop up menu height
vim.opt.showmode = false       -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 1        -- always show tabs
vim.opt.smartcase = true       -- smart case
vim.opt.smartindent = true     -- make indenting smarter again
vim.opt.splitbelow = true      -- force all horizontal splits to go below current window
vim.opt.splitright = true      -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false       -- creates a swapfile
if vim.fn.has("termguicolors") then
  vim.opt.termguicolors = true -- set term gui colors most terminals support this
end
vim.opt.timeoutlen = 100       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true        -- enable persistent undo
vim.opt.updatetime = 300       -- faster completion (4000ms default)
vim.opt.writebackup = false    -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true       -- convert tabs to spaces
vim.opt.shiftwidth = 2         -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2            -- insert 2 spaces for a tab
vim.opt.cursorline = true      -- highlight the current line
vim.opt.number = true          -- set numbered lines
vim.opt.relativenumber = true  -- set relative numbered lines
vim.opt.laststatus = 3
vim.opt.showcmd = false
vim.opt.ruler = true
vim.opt.numberwidth = 2    -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false       -- display lines as one long line
vim.opt.scrolloff = 3      -- is one of my fav
vim.opt.sidescrolloff = 3
vim.opt.fillchars.eob = " "
vim.opt.shortmess:append("c")
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.iskeyword:append("-")
-- vim.opt.matchpairs = '<:>, 「:」'
vim.opt.linebreak = true
vim.opt.showbreak = "↪"
vim.opt.wildmode = "list:full"
vim.opt.colorcolumn = "80"
vim.opt.fileformats = "unix,dos"
vim.opt.inccommand = "nosplit"
vim.opt.confirm = true
vim.opt.visualbell = false
vim.opt.foldlevel = 0
vim.opt.history = 500
vim.opt.autowrite = true
vim.opt.pumblend = 10
vim.opt.spelllang = "en-us"
vim.opt.shiftround = true
vim.opt.virtualedit = "block"
vim.opt.tildeop = true
vim.opt.synmaxcol = 90
vim.g.loaded_python_provider = 1
-- Options
vim.opt.foldmethod = "expr" -- Folding Method
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.number = true
vim.api.nvim_set_hl(0, "Normal", { background = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { background = "none" })
-- vim.api.nvim_set_hl("LineNr", "Comment", true)
-- vim.highlight.create("NormalFloat", { guibg = "Red", guifg = "None" }, false)
-- vim.highlight.create("FloatBorder", { guibg = "Red" }, false)
-- vim.highlight.create("WhichKeyFloat", { guibg = "#16161e" }, false)
-- vim.highlight.create("BufferTabpageFill", { guifg = "None" }, false)
-- vim.highlight.create("VertSplit", { guibg = "#16161e", guifg = "#16161e" }, false)
-- vim.highlight.create("TelescopeNormal", { guibg = "Green", guifg = "None" }, false)
-- vim.highlight.create("TelescopeBorder", { guibg = "Red", guifg = "None" }, false)
-- vim.api.nvim_set_hl("TelescopeMatching", "Constant", true)
-- vim.api.nvim_set_hl("GitSignsCurrentLineBlame", "Comment", true)
-- vim.highlight.create("StatusLine", { guibg = "None" }, false)
-- vim.highlight.create("StatusLineNC", { guibg = "None" }, false)
-- -- Errors
-- vim.highlight.create("LspDiagnosticsVirtualTextError",
--   { guifg = "Red", ctermfg = "Red", gui = "bold" }, false)
-- vim.highlight.create("DiagnosticVirtualTextError",
--   { guifg = "Red", ctermfg = "Red", gui = "bold" }, false)
-- -- Warnings
-- vim.highlight.create("LspDiagnosticsVirtualTextWarning",
--   { guifg = "Yellow", ctermfg = "Yellow" }, false)
-- vim.highlight.create("DiagnosticVirtualTextWarn",
--   { guifg = "Yellow", ctermfg = "Yellow" }, false)
-- -- Info & Hints
-- vim.highlight.create("DiagnosticVirtualTextInfo",
-- { guifg = "White", ctermfg = "White" }, false)
-- vim.highlight.create("DiagnosticVirtualTextHint",
-- { guifg = "White", ctermfg = "White" }, false)
-- -- Comment in italics
-- vim.highlight.create("Comment", { gui = "italic", cterm = "italic" }, false)

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  update_in_insert = true,
  underline = true,
  severity_sort = false,
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})
vim.opt.shortmess = vim.opt.shortmess + { c = true }
vim.api.nvim_set_option("updatetime", 300)
vim.g.vimspector_sidebar_width = 85
vim.g.vimspector_bottombar_height = 15
vim.g.vimspector_terminal_maxwidth = 70
vim.g.tagbar_ctags_bin = "/usr/local/bin/ctags"
vim.g.indentLine_fileTypeExclude = { "dashboard" }
vim.g.better_whitespace_filetypes_blacklist = "dashboard"
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
vim.g.devdocs_open_cmd = "firefox"
vim.g.falcon_background = 0
vim.g.falcon_inactive = 1

-- vim.g.Hexokinase_highlighters = {'sign_column'}
vim.g.Hexokinase_highlighters = { "foregroundfull" }

local th3r00t_wiki = {}
local pyShelfServer_wiki = {}
local pyShelfClient_wiki = {}

th3r00t_wiki.path = "~/Documents/wiki"
th3r00t_wiki.path_html = "~/public_html/wiki"
th3r00t_wiki.name = "th3r00t"
th3r00t_wiki.auto_export = 1
th3r00t_wiki.auto_toc = 0
th3r00t_wiki.auto_generate_tags = 1
th3r00t_wiki.template_path = "~/Documents/wiki/templates"
th3r00t_wiki.template_default = "default"
th3r00t_wiki.template_ext = ".tpl"

pyShelfServer_wiki.path = "~/.local/builds/pyShelf/wiki"
pyShelfServer_wiki.path_html = "~/.local/builds/pyShelf/docs/"
pyShelfServer_wiki.name = "pyShelf"
pyShelfServer_wiki.auto_export = 1
pyShelfServer_wiki.auto_toc = 0
pyShelfServer_wiki.auto_generate_tags = 1
pyShelfServer_wiki.template_path = "~/.local/builds/pyShelf/wiki/templates"
pyShelfServer_wiki.template_default = "default"
pyShelfServer_wiki.template_ext = ".tpl"

pyShelfClient_wiki.path = "~/.local/builds/pyShelfClient/"
pyShelfClient_wiki.path_html = "~/public_html/pyShelfClient"
pyShelfClient_wiki.name = "pyShelfClient"
pyShelfClient_wiki.auto_export = 1
pyShelfClient_wiki.auto_toc = 0
pyShelfClient_wiki.auto_generate_tags = 1
pyShelfClient_wiki.template_path = "~/.local/builds/pyShelfClient/templates"
pyShelfClient_wiki.template_default = "default"
pyShelfClient_wiki.template_ext = ".tpl"

vim.g.vimwiki_list = { th3r00t_wiki, pyShelfServer_wiki, pyShelfClient_wiki }

vim.g.diagnostics = "nvim_lsp"
vim.g.markdown_fenced_languages = {
  "python",
  "bash",
  "vim",
  "lua",
  "json",
  "yaml",
  "sh",
  "html",
  "css",
  "javascript",
  "typescript",
  "go",
  "rust",
  "c",
  "cpp",
  "java",
  "sql",
  "php",
  "powershell",
  "ruby",
  "perl",
  "elixir",
  "erlang",
  "haskell",
  "kotlin",
  "lua",
  "ocaml",
  "r",
  "swift",
  "vim",
  "xml",
  "yaml",
}
vim.g.grepprg = "rg\\ --vimgrep\\ --smart-case\\ --follow"
