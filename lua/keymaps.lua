
local wk = require("which-key")
local dap = require("dap")
local vim = vim

vim.keymap.set('n', '<F5>', function() dap.continue() end)
vim.keymap.set('n', '<F10>', function() dap.step_over() end)
vim.keymap.set('n', '<F11>', function() dap.step_into() end)
vim.keymap.set('n', '<F12>', function() dap.step_out() end)

wk.add(
  {
    { "<M-x>", ":Telescope commands<cr>", desc = "Commands" },
    { "<leader><Tab>", group = "Tabs" },
      { "<leader><Tab>l", ":lua t3_tabs()<cr>", desc = "List Tabs" },
      { "<leader><Tab>c", ":tabclose<cr>", desc = "Close Tab" },
      { "<leader><Tab><Tab>", ":tabnext<cr>", desc = "Next Tab" },
      { "<leader><Tab>p", ":tabprevious<cr>", desc = "Previous Tab" },
      { "<leader><Tab>t", ":tabnew<cr>", desc = "New Tab" },
    { "<leader>b", group = "Buffers" },
      { "<leader>bb", ":lua t3_buffers()<cr>", desc = "List Buffers" },
      { "<leader>bn", ":bnext<cr>", desc = "Next buffer" },
      { "<leader>bp", ":bprev<cr>", desc = "Prev buffer" },
    { "<leader>bs", group = "Buffer Settings" },
    { "<leader>bsw", ":set wrap!<cr>", desc = "Toggle Line Wrap" },
    { "<leader>c", group = "Coding" },
      { "<leader>cD", group = "Definitions" },
        { "<leader>cDd", ":lua require'telescope.builtin'.lsp_definitions()<Cr>", desc = "Definition At Point" },
        { "<leader>cDt", ":lua require'telescope.builtin'.lsp_type_definitions()<Cr>", desc = "Type Definition At Point" },
      { "<leader>cd", group = "Debugger" },
        { "<leader>cdb", ":lua require'dap'.toggle_breakpoint()<Cr>", desc = "Toggle Breakpoint" },
        { "<leader>cdc", ":lua require'dap'.continue()<Cr>", desc = "Continue" },
        { "<leader>cde", ":lua require'dapui'.eval()<Cr>", desc = "Eval" },
      { "<leader>cdl", group = "Log Level" },
        { "<leader>cdld", ":lua require'dap'.set_log_level('DEBUG')<Cr>", desc = "DEBUG" },
        { "<leader>cdle", ":lua require'dap'.set_log_level('ERROR')<Cr>", desc = "ERROR" },
        { "<leader>cdli", ":lua require'dap'.set_log_level('INFO')<Cr>", desc = "INFO" },
        { "<leader>cdlt", ":lua require'dap'.set_log_level('TRACE')<Cr>", desc = "TRACE" },
        { "<leader>cdlw", ":lua require'dap'.set_log_level('WARN')<Cr>", desc = "WARN" },
        { "<leader>cdo", ":lua require'dap'.steo_over()<Cr>", desc = "Step Over" },
        { "<leader>cdr", ":lua require'dap'.repl.open()<Cr>", desc = "Step In" },
        { "<leader>cds", ":lua require'dap'.step_in()<Cr>", desc = "Toggle Breakpoint" },
        { "<leader>cdt", ":Telescope dap configurations<Cr>", desc = "Configurations" },
        { "<leader>cdu", ":lua require'dapui'.toggle()<Cr>", desc = "Toggle Ui" },
      { "<leader>cr", ":lua require'telescope.builtin'.lsp_references()<Cr>", desc = "References" },
      { "<leader>ct", ":lua require'telescope.builtin'.treesitter()<Cr>", desc = "Treesitter" },
    { "<leader>f", group = "file" },
      { "<leader>fe", "<cmd>Lex<cr>", desc = "Tree View" },
      { "<leader>ff", ":lua t3_find_file()<cr>", desc = "Find File" },
      { "<leader>fr", ":lua t3_recent_files()<cr>", desc = "Recent Files" },
      { "<leader>ft", "<cmd>Lexplore<cr>", desc = "File Tree" },
    { "<leader>g", group = "grep" },
      { "<leader>gg", ":lua t3_live_grep(0)<cr>", desc = "Live Grep" },
      { "<leader>gr", ":lua t3_live_grep(1)<cr>", desc = "Resume Grep" },
    { "<leader>G", group = "Git" },
      { "<leader>gg", ":Git<cr>", desc = "Git" },
      { "<leader>gp", ":Git pull<cr>", desc = "pull" },
      { "<leader>gP", ":Git push<cr>", desc = "push" },
      { "<leader>ga", ":Gwrite<cr>", desc = "Add current file" },
      { "<leader>gc", ":Git commit<cr>", desc = "Commit" },
      { "<leader>gB", ":lua require'telescope.builtin'.git_branches()<Cr>", desc = "Branches" },
      { "<leader>gb", ":lua require'telescope.builtin'.git_bcommits()<Cr>", desc = "Buffer commits" },
      { "<leader>gC", ":lua require'telescope.builtin'.git_commits()<Cr>", desc = "Project commits" },
      { "<leader>gs", ":lua require'telescope.builtin'.git_status()<Cr>", desc = "Status" },
    { "<leader>h", group = "Harpoon" },
      { "<leader>ha", ":lua require'harpoon.mark'.add_file()<cr>", desc = "Add File" },
      { "<leader>hh", ":lua require'harpoon.ui'.toggle_quick_menu()<cr>", desc = "Harpoon UI" },
      { "<leader>hn", ":lua require'harpoon.ui'.nav_next()<cr>", desc = "Next" },
      { "<leader>hp", ":lua require'harpoon.ui'.nav_prev()<cr>", desc = "Previous" },
    { "<leader>o", group = "Org" },
      { "<leader>ow", group = "Workspace" },
      { "<leader>owt", ":Neorg workspace tasks<Cr>", desc = "Workspace: Tasks" },
      { "<leader>owp", ":Neorg workspace projects<Cr>", desc = "Workspace: Projects" },
      { "<leader>owj", ":Neorg workspace journal<Cr>", desc = "Workspace: Journal" },
      { "<leader>owd", ":Neorg workspace default<Cr>", desc = "Workspace: Default" },
      { "<leader>own", ":Neorg workspace notes<Cr>", desc = "Workspace: Notes" },
      { "<leader>ot", group = "Tasks" },
      { "<leader>ota", "o- [ ] ", desc = "Add new task." },
      { "<leader>otc", ":s/- %[ %]/- [x]/<CR>", desc = "Mark Task as Done" },
      { "<leader>otn", ":/- %[ ]<CR>", desc = "Next task" },
      { "<leader>otn", ":?- %[ ]<CR>", desc = "Prev task" },
      { "<leader>om", group = "Metadata" },
      { "<leader>omi", ":Neorg inject-metadata<Cr>", desc = "Inject metadata" },
      { "<leader>omu", ":Neorg update-metadata<Cr>", desc = "Update metadata" },
      { "<leader>oi", group = "Insert" },
      { "<leader>oil", ":Telescope neorg insert_link<Cr>", desc = "Insert link" },
      { "<leader>oif", ":Telescope neorg insert_file_link<Cr>", desc = "Insert file link" },
      { "<leader>of", group = "Find" },
      { "<leader>ofl", ":Telescope neorg find_linkable<Cr>", desc = "Find linkable" },
      { "<leader>ofc", ":Telescope neorg find_context_tasks<Cr>", desc = "Find contect tasks" },
      { "<leader>ofp", ":Telescope neorg find_project_tasks<Cr>", desc = "Find project tasks" },
      { "<leader>ofa", ":Telescope neorg find_aof_tasks<Cr>", desc = "Find aof tasks" },
      { "<leader>oo", group = "Open" },
      { "<leader>ooi", ":Neorg index<Cr>", desc = "Open index" },
      { "<leader>oc", group = "Code blocks" },
      { "<leader>ocl", "o#tangle.none<Cr>@code lua<Cr>-- Insert Code<Cr>@end<Esc>O", desc = "Lua" },
      { "<leader>ocp", "o#tangle.none<Cr>@code python<Cr># Insert Code<Cr>@end<Esc>O", desc = "Python" },
      { "<leader>ocb", "o#tangle.none<Cr>@code bash<Cr># Insert Code<Cr>@end<Esc>O", desc = "Shell" },
      { "<leader>oct", ":Neorg tangle current-file", desc = "Tangle file" },
    { "<leader>p", group = "Project" },
        { "<leader>pp", ":lua require'telescope'.extensions.project.project{}<Cr>", desc = "Projects" },
    { "<leader>t", group = "Terminal" },
      { "<leader>tr", ":ToggleTerm direction=float dir=git_dir 2<cr>", desc = "Toggle Terminal 2" },
      { "<leader>tt", ":ToggleTerm<cr>", desc = "Toggle Terminal" },
      { "<leader>tv", ":ToggleTermSendVisualSelection 2<cr>", desc = "Send Selection" },
  }
)
