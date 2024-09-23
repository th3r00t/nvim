local vim = vim
local opt = vim.opt

-- opt.wildmenu = true
-- vim.g.netrw_keepdir = 0
vim.g.vimwiki_list = {
  {
    path = '~/org/wiki/',
    -- syntax = 'markdown',
    -- ext = '.md'
  }
}
vim.g.vimwiki_global_ext = 0
vim.g.vimwiki_auto_chdir = 1
vim.api.nvim_set_keymap('n', '<Leader>ww', '<Cmd>VimwikiIndex<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>wt', '<Cmd>VimwikiTabIndex<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ws', '<Cmd>VimwikiUISelect<CR>', { noremap = true, silent = true })
vim.treesitter.language.register("markdown", "vimwiki")
-- vim.g.vimwiki_folding = 'expr'
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
