local wk = require("which-key")
local mapx = require("mapx").setup({ global = true, whichkey = true })
local vim = vim
wk.register({
  ["<leader>b"] = {
    name = "+buffer",
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    n = { "<cmd>bn<cr>", "Next Buffer" },
    p = { "<cmd>bp<cr>", "Prev Buffer" },
  },
  ["<leader>f"] = {
    name = "+file",
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    b = { "<cmd>Telescope file_browser<cr>", "File Browser" },
    n = { "<cmd>enew<cr>", "New File" },
  },
  ["<leader>x"] = {
    name = "+trouble",
    x = { "<cmd>TroubleToggle<cr>", "Toggle Trouble" },
    w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace Diag" },
    d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document Diag" },
    q = { "<cmd>TroubleToggle quickfix<cr>", "Quickfix" },
    l = { "<cmd>TroubleToggle loclist<cr>", "Local List" },
  },
  ["g"] = {
    name = "+go",
    R = { "<cmd>TroubleToggle lsp_references<cr>", "Lsp References" },
  },
  ["<leader>v"] = {
    name = "+vim",
    e = { "<cmd>e ~/.config/nvim/init.lua<cr><cmd>cd ~/.config/nvim<cr>", "Edit Config" },
    k = { "<cmd>e ~/.config/nvim/lua/_whichkey.lua<cr><cmd>cd ~/.config/nvim<cr>", "Edit Keymaps" },
    p = { "<cmd>e ~/.config/nvim/lua/plugins.lua<cr><cmd>cd ~/.config/nvim<cr>", "Edit Plugins" },
    o = { "<cmd>e ~/.config/nvim/lua/options.lua<cr><cmd>cd ~/.config/nvim<cr>", "Edit Options" },
    s = { "<cmd>luafile ~/.config/nvim/init.lua<cr>", "Reload Config" },
  },
  ["<leader>m"] = {
    name = "+marks",
    b = { "<cmd>Telescope vim_bookmarks current_file<cr>", "Show Buffer Bookmarks" },
    m = { "<cmd>Telescope vim_bookmarks<cr>", "Show All Bookmarks" },
    l = { "<cmd>BookmarkLoad /home/th3r00t/.vim-bookmarks<cr>", "Load Bookmarks" },
    s = { "<cmd>BookmarkSave /home/th3r00t/.vim-bookmarks<cr>", "Save Bookmarks" },
    t = { "<cmd>BookmarkToggle<cr>", "Toggle Bookmark" },
    a = { "<cmd>BookmarkAnnotate<cr>", "Annotate Bookmark" },
  },
})

mapx.group("silent", function()
  nnoremap("<M-h>", "<C-w><", "Inc Left")
  nnoremap("<M-l>", "<C-w>>", "Inc Right")
  nnoremap("<M-j>", "<C-w>-", "Inc Up")
  nnoremap("<M-k>", "<C-w>+", "Inc Down")
  -- nnoremap("<M-h>", ":TmuxNavigateLeft", "Inc Left")
  -- nnoremap("<M-l>", ":TmuxNavigateRight", "Inc Right")
  -- nnoremap("<M-j>", ":TmuxNavigateUp", "Inc Up")
  -- nnoremap("<M-k>", ":TmuxNavigateDown", "Inc Down")
end)

-- Overrides default <S-k>
-- nnoremap("<S-k>", ":devdocs-under-cursor<CR>", "DevDocs under_cursor")
mapx.nname("<C-x>", "+Actions")
nnoremap("<C-x><C-f>", ":Telescope file_browser<Cr>")
nnoremap("<C-x><C-r>", ":RnvimrToggle<Cr>", "Ranger")
nnoremap("<C-x><C-y>", ":Telescope neoclip<Cr>", "Neoclip")
nnoremap("<C-x>2", ":split<Cr>", "hsplit")
nnoremap("<C-x>3", ":vsplit<Cr>", "hsplit")
nnoremap("<M-x>x", ":Telescope commands<Cr>")
inoremap("<M-x>x", "<esc>:Telescope commands<Cr>")
nnoremap("<F2>", ":Ag ")

-- :EditVifm - select a file or files to open in the current buffer
-- :Vifm - alias for :EditVifm to be used like :vert Vifm
-- :PeditVifm - select a file in preview window
-- :SplitVifm - split buffer and select a file or files to open
-- :VsplitVifm - vertically split buffer and select a file or files to open
-- :DiffVifm - select a file or files to compare to the current file with :vert diffsplit
-- :TabVifm - select a file or files to open in tabs
-- :VifmCs - attempts to convert Vim's color scheme to Vifm's one

nnoremap("<F3>", "<cmd>PickColor<CR>")
inoremap("<F3>", "<cmd>PickColorInsert<CR>")
nnoremap("<F4>", ":EditVifm<Cr>")
nnoremap("<leader><F4>", ":DiffVifm<Cr>")
nnoremap("<M-x>/", ":Telescope resume<Cr>", "Telescope Resume")
nnoremap("<M-x>!", ":luafile %<Cr>", "Source (lua) here")
nnoremap("<M-x>?", ":Cheatsheet<Cr>", "Nvim Cheatsheet")
nnoremap("<M-x><F2>", "<cmd>lua require'spectre'.open()<CR>", "Spectre Search & Replace")
vnoremap("<M-x><F2>", "<cmd>lua require'spectre'.open_visual({select_word=true})<CR>", "Spectre Search Selection")
mapx.nname("<M-x>p", "+Packer")
nnoremap("<M-x>pi", ":PackerInstall<Cr>", "Install")
nnoremap("<M-x>pc", ":PackerClean<Cr>", "Clean")
nnoremap("<M-x>pC", ":PackerCompile profile=true<Cr>", "Compile")
nnoremap("<M-x>py", ":PackerSync<Cr>", "Sync")
nnoremap("<M-x>ps", ":PackerStatus<Cr>", "Status")
nnoremap("<M-x>pu", ":PackerUpdate<Cr>", "Update")
nnoremap("<M-x>pp", ":PackerProfile<Cr>", "Profile")
nnoremap("<M-x>pn", ":PackerSnapshot<Cr>", "Snapshot")
nnoremap("<M-x>pd", ":PackerSnapshotDelete<Cr>", "Delete Snapshot")
nnoremap("<M-x>pr", ":PackerSnapshotRollback<Cr>", "Rollback Snapshot")
mapx.nname("<M-x>M", "+Mason")
nnoremap("<M-x>Mm", ":Mason<Cr>")
nnoremap("<M-x>Ml", ":MasonLog<Cr>")
nnoremap("<M-x>Mi", ":MasonInstall ")
nnoremap("<M-x>Mu", ":MasonUninstall<Cr>")
nnoremap("<M-x>Ma", ":MasonUninstallAll<Cr>")
mapx.nname("<M-x>l", "+Lsp")
nnoremap("<M-x>li", ":LspInfo<Cr>")
nnoremap("<M-x>lI", ":LspInstall ")
nnoremap("<M-x>lu", ":LspUninstall ")
nnoremap("<M-x>lS", ":LspStart<Cr>")
nnoremap("<M-x>lr", ":LspRestart<Cr>")
nnoremap("<M-x>lx", ":LspStop<Cr>")
mapx.nname("<M-x>ld", "+Diagnostics")
nnoremap("<M-x>ldd", ":ToggleDiag<Cr>", "Toggle Diagnostics Display")
mapx.nname("<M-x>m", "+Messages")
nnoremap("<M-x>Mm", ":messages<Cr>", "Show Messages")
nnoremap("<M-x>Mc", ":messages clear<Cr>", "Clear Messages")
nnoremap("<M-x>Me", ":echo v:errmsg<Cr>", "Last Error")
mapx.nname("<M-x>t", "+Tmux")
nnoremap("<M-x>ts", ":Telescope tmux sessions<Cr>", "Tmux Sessions")
nnoremap("<M-x>tw", ":Telescope tmux windows<Cr>", "Tmux Windows")
nnoremap("<M-x>tt", ":lua require'telescope'.extensions.tmuxinator.projects{}<Cr>", "Tmuxinator Projects")
mapx.nname("<M-x>h", "+Help")
nnoremap("<M-x>hm", ":Telescope man_pages<Cr>", "Man Pages")
nnoremap("<M-x>hh", ":Telescope help_tags<Cr>", "Help")
nnoremap("<M-x>hd", ":DevDocs ", "DevDocs Search x ft")
nnoremap("<M-x>hD", ":DevDocsAll ", "DevDocs Search All")

mapx.nname("<C-c>", "Control Systems")
nnoremap("<C-c>e", ":Lexplore<Cr>", "Explore")
mapx.nname("<C-c>t", "Todo's")
nnoremap("<C-c>tt", ":TodoTelescope<Cr>", "Todo Telescope")
nnoremap("<C-c>tl", ":TodoLocList<Cr>", "Todo Location List")
nnoremap("<C-c>tT", ":TodoTrouble<Cr>", "Todo Trouble")
nnoremap('<C-c>"', ":lua require'telescope.builtin'.marks()<Cr>", "Marks")
nnoremap("<C-c>'", ":lua require'telescope.builtin'.registers()<Cr>", "Registers")
nnoremap("<C-c>.", ":SnipRun<Cr>", "Execute Line")
vnoremap("<C-c>.", ":SnipRun<Cr>", "Execute Selection")
vnoremap("<C-c>.", ":SnipRun<Cr>", "Execute Selection")
nnoremap("<C-c><C-c>", ":MdEval<Cr>", "Show Code Actions")
nnoremap("<C-c><C-;>", ":FeMaco<Cr>", "Edit Code Block")
mapx.nname("<C-c>c", "+Coding")
nnoremap("<C-c>cA", ":AerialToggle!<Cr>", "Aerial")
nnoremap("<C-c>cd", ":TroubleToggle document_diagnostics<Cr>", "Trouble document_diagnostics")
nnoremap("<C-c>cT", ":TagbarToggle<Cr>", "TagbarToggle")
nnoremap("<C-c>cs", ":lua require'telescope.builtin'.treesitter()<Cr>", "Treesitter")
nnoremap("<C-c>cr", ":lua require'telescope.builtin'.lsp_references()<Cr>", "References")
nnoremap("<C-c>ct", ":lua require'telescope.builtin'.lsp_type_definitions()<Cr>", "Type Definitions")
nnoremap("<C-c>cD", ":lua require'telescope.builtin'.lsp_definitions()<Cr>", "Definitions")
nnoremap("<C-c>ce", ":lua require'swenv.api'.pick_venv()<Cr>", "Pick Venv")
nnoremap("<C-c>c?", ":LspKeymaps<Cr>", "Lsp Keymaps")
-- mapx.nname("<C-c>o", "+Org Mode")
--   nnoremap("<C-c>of", ":FZF ~/Documents/org/<Cr>", "Find Org Files")
-- nnoremap("<C-c>oc", ":Neorg gtd capture<Cr>", "Capture")
-- nnoremap("<C-c>ov", ":Neorg gtd views<Cr>", "View Tasks")
-- nnoremap("<C-c>oe", ":Neorg gtd edit<Cr>", "Edit")
-- mapx.nname("<C-c>oj", "+Org Journal")
-- nnoremap("<C-c>ojj", ":Neorg journal<Cr>", "Open Journal")
-- nnoremap("<C-c>ojt", ":Neorg journal toc<Cr>", "Table Of Contents")
-- mapx.nname("<C-c>of", "+Org Find")
-- nnoremap("<C-c>ofl", ":Telescope neorg find_linkable<Cr>", "Find Link")
-- nnoremap("<C-c>ofh", ":Telescope neorg search_headings<Cr>", "Find Headings")
-- nnoremap("<C-c>oft", ":Telescope neorg find_project_tasks<Cr>", "Find Project Tasks")
-- nnoremap("<C-c>ofc", ":Telescope neorg find_context_tasks<Cr>", "Find Context Tasks")
-- nnoremap("<C-c>ofa", ":Telescope neorg find_aof_tasks<Cr>", "Find Focus Tasks")
-- nnoremap("<C-c>ofp", ":Telescope neorg find_aof_project_tasks<Cr>", "Find Project Focus Tasks")
mapx.nname("<C-c>g", "+Git Commands")
nnoremap("<C-c>gGc", ":lua require'telescope.builtin'.git_commits()<Cr>", "git commits")
nnoremap("<C-c>gGC", ":lua require'telescope.builtin'.git_bcommits()<Cr>", "git buffer commits")
nnoremap("<C-c>gGs", ":lua require'telescope.builtin'.git_status()<Cr>", "git status")
nnoremap("<C-c>gGb", ":lua require'telescope.builtin'.git_branches()<Cr>", "git branches")
nnoremap("<C-c>gs", ":Gstatus<Cr>", "Status")
nnoremap("<C-c>gc", ":Gcommit %<Cr>", "Commit File")
nnoremap("<C-c>gl", ":Glog<Cr>", "Log")
nnoremap("<C-c>gp", ":Gpush<Cr>", "Push")
nnoremap("<C-c>gg", ":Neogit<Cr>", "Neogit")
mapx.nname("<C-c>i", "+Insert")
nnoremap("<C-c>is", ":lua require'telescope.builtin'.symbols{}<Cr>", "Symbols")
nnoremap("<C-c>il", ":Telescope software-licenses find<Cr>", "Insert Licensing")
-- mapx.nname("<C-c>ol", "+Org Links")
-- nnoremap("<C-c>oli", ":Telescope neorg insert_file_link<Cr>", "Insert File Link")
-- mapx.nname("<C-c>oT", "+Table Of Contents")
--   inoremap("<C-c>oTI", "= TOC<Cr>", "Insert toc header")
-- nnoremap("<C-c>oTg", ":Neorg toc generate_toc<Cr>", "Generate toc")
-- nnoremap("<C-c>oTs", ":Neorg toc split<Cr>", "Insert toc split")
-- nnoremap("<C-c>oTi", ":Neorg toc inline<Cr>", "Insert toc inline")
-- nnoremap("<C-c>oTf", ":Neorg toc toqflist<Cr>", "Insert toc quickfixlist")
-- nnoremap("<C-c>ot", ":Neorg tangle current-file<Cr>", "Tangle File")
mapx.nname("<C-c>d", "+Debug")
nnoremap("<C-c>db", ":call vimspector#ToggleBreakpoint()<Cr>", "Vimspector Breakpoint")
nnoremap("<C-c>dl", ":call vimspector#Launch()<Cr>", "Launch Vimspector")
nnoremap("<C-c>dw", ":call vimspector#AddWatch()<Cr>", "Vimspector Add Watch")
nnoremap("<C-c>de", ":call vimspector#Evaluate()<Cr>", "Vimspector Evaluate")
mapx.nname("<C-c>ds", "+Step")
nnoremap("<C-c>dso", ":call vimspector#StepOver()<Cr>", "Vimspector Step Over")
nnoremap("<C-c>dsu", ":call vimspector#StepOut()<Cr>", "Vimspector Step Out")
nnoremap("<C-c>dsi", ":call vimspector#StepInto()<Cr>", "Vimspector Step In")
nnoremap("<C-c>p", ":Telescope project<Cr>", "Projects")
mapx.nname("<C-c><C-r>", "+Repl")
nnoremap("<C-c><C-r>r", ":IronRepl<Cr>")
nnoremap("<C-c><C-r>R", ":IronRestart<Cr>")
nnoremap("<C-c><C-r>s", ":IronSend<Cr>")
mapx.nname("<C-c><Tab>", "+Telescope")
nnoremap("<C-c><Tab>f", ":Telescope fd<Cr>", "Fuzy File Finder")
nnoremap("<C-c><Tab>t", ":Telescope tags<Cr>", "Project Tags")
nnoremap("<C-c><Tab>.", ":Telescope ports<Cr>", "Open Ports")
nnoremap("<C-c><Tab>a", ":Telescope aerial<Cr>", "Aerial")
nnoremap("<C-c><Tab>P", ":Telescope packer<Cr>", "Plugin Docs")
nnoremap("<C-c><Tab><Tab>", ":Telescope resume<Cr>", "Resume Telescope")
nnoremap("<C-c><Tab>$", ":Telescope luasnip<Cr>", "LuaSnip")
nnoremap("<C-c><Tab>p", ":Telescope neoclip<Cr>", "Paste From Clipboard")
nnoremap("<C-c><Tab>i", ":Telescope symbols<Cr>", "Insert Symbol")
nnoremap("<C-c><Tab>d", ":Telescope dotfiles<Cr>", "Dotfiles")
nnoremap("<C-c><Tab>c", ":Telescope commands<Cr>", "Commands")
nnoremap("<C-c><Tab>m", ":Telescope vim_bookmarks<Cr>", "Bookmarks")
nnoremap("<C-c><Tab>c", ":Telescope colorscheme<Cr>", "Color Schemes")
mapx.nname("<C-c><f>", "+Find")
nnoremap("<C-c>ff", "<cmd>FileInDirectory<Cr>", "Fuzy File Finder")
nnoremap("<C-c>fg", "<cmd>GrepInDirectory<Cr>", "Fuzy File Finder")
mapx.nname("<C-s>", "+Sessions")
nnoremap("<C-s>l", "<cmd>lua require('persistence').load({ last = true })<Cr>", "Load Last Session")
nnoremap("<C-s>S", "<cmd>lua require('persistence').stop()<Cr>", "Do Not Track Session")
mapx.nname("<C-c><C-z>", "+Zig")
nnoremap("<C-c><C-z><C-b>", ":Zig build<Cr>", "Build")
nnoremap("<C-c><C-z><C-c>", ":Zig check<Cr>", "Check")
nnoremap("<C-c><C-z><C-f>", ":Zig fmt<Cr>", "Format")
nnoremap("<C-c><C-z><C-t>", ":Zig project.task<Cr>", "Format")
-- restore the last session
vim.api.nvim_set_keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})
-- stop Persistence => session won't be saved on exit
vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {})

mapx.nname("<leader><Tab>", "Tabs")
nnoremap("<leader><Tab><space>", ":Telescope tele_tabby list<Cr>", "Tab List")
nnoremap("<leader><Tab>n", ":tabnext<Cr>", "Next Tab")
nnoremap("<leader><Tab>p", ":tabprevious<Cr>", "Previous Tab")
nnoremap("<leader><Tab><Tab>", ":tabnew<Cr>", "New Tab")
