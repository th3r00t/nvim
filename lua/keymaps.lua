local mapx = require'mapx'.setup{ global = true, whichkey = true }
local vim = vim
-- Set Leader
vim.g.mapleader = ','
vim.g.maplocalleader = ','
-- Disable Arrow Keys
-- nnoremap("<Up>", "<nop>")
-- nnoremap("<Down>", "<nop>")
-- nnoremap("<Left>", "<nop>")
-- nnoremap("<Right>", "<nop>")
-- inoremap("<Up>", "<nop>")
-- inoremap("<Down>", "<nop>")
-- inoremap("<Left>", "<nop>")
-- inoremap("<Right>", "<nop>")
-- Resize Windows
mapx.group("silent", function()
nnoremap("<M-h>", "<C-w><", "Inc Left")
nnoremap("<M-l>", "<C-w>>", "Inc Right")
nnoremap("<M-j>", "<C-w>-", "Inc Up")
nnoremap("<M-k>", "<C-w>+", "Inc Down")
end)
-- Window Switching
mapx.group("silent", function()
nnoremap("<M-left>", "<C-w>h")
nnoremap("<M-right>", "<C-w>l")
nnoremap("<M-down>", "<C-w>j")
nnoremap("<M-up>", "<C-w>k")
end)
-- Completion Menu
-- When completion menu is shown, use <cr> to select an item
-- and do not add an annoying newline. Otherwise, <enter> is what it is.
-- For more info , see https://goo.gl/KTHtrr and https://goo.gl/MH7w3b
  vim.cmd([[inoremap <expr> <cr> ((pumvisible())?("\<C-Y>"):("\<cr>"))]])
-- Use <esc> to close auto-completion menu
  vim.cmd([[inoremap <expr> <esc> ((pumvisible())?("\<C-e>"):("\<esc>"))]])
-- Tab-complete, see https://goo.gl/LvwZZY
  vim.cmd([[inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"]])
-- Continuous Visual Shifting
xnoremap("<", "<gv")
xnoremap(">", ">gv")
-- Esc Terminal
tnoremap("<ESC>", "<C-\\><C-n>")
-- NERDTree
nnoremap("<C-e>", ":NERDTreeToggle<Cr>") 
nnoremap("<leader><space>", ":ToggleTerm<Cr>", "Toggle Terminal")
nnoremap("<leader><leader>", ":.w !bash<Cr>", "Execute Current Line")
mapx.nname("<leader>c", "Code Actions")
nnoremap("<leader>ct", ":lua require'telescope.builtin'.treesitter()<Cr>", "Commands")
nnoremap("<leader>cr", ":lua require'telescope.builtin'.lsp_references()<Cr>", "References")
nnoremap("<leader>cr", ":lua require'telescope.builtin'.lsp_type_definitions()<Cr>", "Type Definition At Point")
nnoremap("<leader>cs", ":SymbolsOutline<Cr>", "Symbol Outline")
nnoremap("<leader>cd", ":lua require'telescope.builtin'.lsp_definitions()<Cr>", "Definition At Point")
mapx.nname("<leader>I", "Insert Menu")
nnoremap("<leader>Is", ":lua require'telescope.builtin'.symbols{}<Cr>", "Insert Symbols")

mapx.nname("<leader>f", "Fuzzy")
nnoremap("<leader>ff", ":lua require'telescope.builtin'.find_files()<Cr>", "Find Files")
nnoremap("<leader>fb", ":lua require'telescope.builtin'.buffers()<Cr>", "Find Buffers")
nnoremap("<leader>fg", ":lua require'telescope.builtin'.grep_string()<Cr>", "Grep String")

mapx.nname("<leader>P", "Projects")
-- https://github.com/nvim-telescope/telescope-project.nvim
nnoremap("<leader>Pp", ":lua require'telescope'.extensions.project.project{}<Cr>", "Projects")
nnoremap("<leader>Pl", ":Telescope software-licenses find<Cr>", "Insert Licensing")

mapx.nname("<leader>G", "Git Commands")
nnoremap("<leader>GC", ":lua require'telescope.builtin'.git_commits()<Cr>", "git commits")
nnoremap("<leader>Gc", ":lua require'telescope.builtin'.git_bcommits()<Cr>", "git buffer commits")
nnoremap("<leader>Gs", ":lua require'telescope.builtin'.git_status()<Cr>", "git status")
nnoremap("<leader>Gb", ":lua require'telescope.builtin'.git_branches()<Cr>", "git branches")

mapx.nname("<leader>N", "NeOrg")


mapx.nname("<leader>o", "NeOrg")
nnoremap("<leader>ov", ":Neorg gtd views<Cr>", "View Tasks & Projects")
nnoremap("<leader>oc", ":Neorg gtd capture<Cr>", "Create Task")
nnoremap("<leader>oe", ":Neorg gtd edit<Cr>", "Edit Task")
mapx.nname("<leader>oj", "NeOrg Journal")
nnoremap("<leader>ojj", ":Neorg journal today<Cr>", "Open Todays Journal")
nnoremap("<leader>ojy", ":Neorg journal yesterday<Cr>", "Open Yesterdays Journal")
nnoremap("<leader>ojt", ":Neorg journal tomorrow<Cr>", "Open Tomorrows Journal")
nnoremap("<leader>oju", ":Neorg journal toc update<Cr>", "TOC: Update")
nnoremap("<leader>ojT", ":Neorg journal toc<Cr>", "TOC: Open")
nnoremap("<leader>ot", ":TodoTelescope<Cr>", "Todo Telescope")
nnoremap("<leader>oT", ":Neorg tangle current-file<Cr>", "Tangle File")
nnoremap("<leader>oT", ":Neorg tangle current-file<Cr>", "Tangle File")

mapx.nname("<leader>t", "Toggles")
nnoremap("<leader>tt", ":TransparentToggle<Cr>", "Toggle Transparency")
nnoremap("<leader>tn", ":setlocal nonumber norelativenumber<Cr>", "Turn Off Line Numbers Localy")

mapx.nname("<leader>T", "Tmux")
nnoremap("<leader>Ts", ":Telescope tmux sessions<Cr>", "Tmux Sessions")
nnoremap("<leader>Tw", ":Telescope tmux windows<Cr>", "Tmux Windows")
nnoremap("<leader>Tt", ":lua require'telescope'.extensions.tmuxinator.projects{}<Cr>", "Tmuxinator Projects")

nnoremap("<leader>Njt", ":Neorg journal tomorrow<Cr>", "Open Tomorrows Journal")
nnoremap("<leader>Njt", ":Neorg journal tomorrow<Cr>", "Open Tomorrows Journal")
nnoremap("<leader>Njt", ":Neorg journal tomorrow<Cr>", "Open Tomorrows Journal")

nnoremap("<Tab><space>", ":Telescope tele_tabby list<Cr>", "Tab List")
nnoremap("<Tab>n", ":tabnext<Cr>", "Next Tab")
nnoremap("<Tab>p", ":tabprevious<Cr>", "Previous Tab")
nnoremap("<Tab><Tab>", ":tabnew<Cr>", "New Tab")
nnoremap("<leader>p", ":Telescope ports<Cr>", "Ports")

nnoremap("<leader>bp", ":bp<Cr>", "Previous Buffer")
nnoremap("<leader>bn", ":bn<Cr>", "Next Buffer")

mapx.nname("<leader>v", "Vim Commands")
nnoremap("<leader>ve", ":edit ~/.config/nvim/init.lua <bar> :cd ~/.config/nvim/ <bar> echomsg 'Editing Config'<Cr> ", "Edit Vim Config")
nnoremap("<leader>vk", ":edit ~/.config/nvim/lua/keymaps.lua <bar> :cd ~/.config/nvim/ <bar> echomsg 'Editing Keymaps'<Cr> ", "Edit KeyMaps")
nnoremap("<leader>vp", ":edit ~/.config/nvim/lua/plugins.lua <bar> :cd ~/.config/nvim/ <bar> echomsg 'Editing Plugins'<Cr> ", "Edit Plugins")
nnoremap("<leader>vo", ":edit ~/.config/nvim/lua/options.lua <bar> :cd ~/.config/nvim/ <bar> echomsg 'Editing Options'<Cr> ", "Edit Options")
nnoremap("<leader>vc", ":lua require'telescope.builtin'.commands()<Cr>", "Commands")
nnoremap("<leader>vt", ":lua require'telescope.builtin'.colorscheme()<Cr>", "Theme")
nnoremap("<leader>vK", ":lua require'telescope.builtin'.keymaps()<Cr>", "View Keymaps")
nnoremap("<leader>vs", ":silent update ~/.config/nvim/init.lua <bar> source ~/.config/nvim/init.lua <bar> echomsg 'Config Reloaded'<Cr> ", "Reload Vim Config") nnoremap("<leader>v<space>", ":silent PackerInstall<Cr> ", "Update Packages")
nnoremap("<leader>vP", ":Telescope packer<Cr>", "View Packer Packages")

nnoremap("<leader>?", ":Cheatsheet<Cr>", "Vim Cheatsheet")

nnoremap("<leader>m", ":lua require'telescope.builtin'.marks()<Cr>", "Marks")
nnoremap("<leader>r", ":lua require'telescope.builtin'.registers()<Cr>", "Marks")

mapx.nname("<leader>d", "Debug")
vnoremap("<M-d>", "lua require('dapui').eval()<CR>")
nnoremap("<leader>dd", ":lua require('dapui').toggle()<CR>") 
nnoremap("<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>")
nnoremap("<leader>dc", ":lua require'dap'.continue()<CR>")
nnoremap("<leader>do", ":lua require'dap'.step_over()<CR>")

nnoremap("<leader>u", ":UndotreeToggle<Cr>", "Undo Tree")

mapx.nname("<leader>h", "Help")
nnoremap("<leader>m", ":Telescope man_pages<Cr>", "Man Pages")
nnoremap("<leader>h", ":Telescope help_tags<Cr>", "Help")
