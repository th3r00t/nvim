local vim = vim
local opt = vim.opt

-- Bootstrap Lazy Plugin Manager
require("bootstrap")  -- lua/bootstrap.lua

-- Set leader prior to initialization of plugin loader
vim.g.mapleader = ","
vim.g.localleader = ";"

require("vimwiki")
-- [[ Plugins ]] --
require("lazy").setup(require("plugins"))  -- lua/plugins.lua
-- [[ Options ]] -- lua/options.lua
require("options")
-- [[ Functions ]] -- lua/functions.lua
require("functions")
-- [[ Keymaps ]] -- lua/keymaps.lua
require("keymaps")
-- [[ Completion Sources ]] -- lua/completion.lua
require("completion")
-- [[ Telescope ]] -- lua/_telescope.lua
require("_telescope")
-- [[ Terminal ]] -- lua/teminal.lua
require("terminal")
-- [[ DAP Configurations ]] -- lua/dapconfig.lua
require("dapconfig")
-- [[ Org Configurations ]] -- lua/orgmode.lua
require("orgmode")
-- [[ Markdown Configurations ]] -- lua/orgmode.lua
require("markdown")
-- [[ Discord Configurations ]] -- lua/discord.lua
-- require("discord")

-- [[ Testing Configs ]]

-- [[ Set Visual Options ]] --
require('lualine').setup()
vim.cmd[[colorscheme tokyonight-storm]]
-- [[ Language Server Protocol ]] -- lua/lsp.lua
require("lsp")

