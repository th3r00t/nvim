-- Lua Configuration Root
-- lua/plugins.lua
-- lua/treesitter.lua
local vim = vim
local opt = vim.opt
-- Main Neovim Settings
--vim.g.nvim_config_root = '~/.config/nvim'
vim.g.powerline_pycmd = 'py3'
-- Setup Main Python Runtimes
vim.cmd([[
    let g:python3_host_prog=exepath('python')
    autocmd TermOpen * setlocal nonumber norelativenumber
  ]])
-- Requires
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('plugins') -- lua/plugins.lua
require('treesitter') -- lua/treesitter.lua
-- require('config_neorg') -- lua/config_neorg.lua
-- require('config_org') -- lua/config_org.lua
require('options') -- lua/options.lua
require('nvim-cmp') -- lua/nvim-cmp.lua
require('_telescope') -- lua/_telescope.lua
require('_presence') -- lua/_presence.lua
require('_whichkey') -- lua/_whichkey.lua
require('_mason') -- lua/_mason.lua
require('_rust') -- lua/_rust.lua
require('_terminal') -- lua/_terminal.lua
require('_lspconfig') -- lua/_lspconfig.lua
require('_null-ls') -- lua/_null-ls.lua
require('_illuminate') -- lua/_snippets.lua
require('_lualine') -- lua/_lualine.lua
--require('_dashboard') -- lua/_dashboard.lua
require('_alpha') -- lua/_alpha.lua
require('_aerial') -- lua/_aerial.lua
require('_marks') -- lua/_marks.lua
require('_hydra') -- lua/_hydra.lua
require('_netrw') -- lua/_netrw.lua
require('_iron') -- lua/_iron.lua

-- Miscellaneous
require'forem-nvim'.setup {
    api_key = "eBE7tSi4xNzPjRUu3XgxtXPK"
}
-- require("notify").setup({
--   background_colour = "#000000",
-- })
vim.cmd([[
    colorscheme tokyonight-night
    " colorscheme falcon
]])
