-- vim: set foldmethod=indent --
-- vim: set tabstop=2 --
return require('packer').startup({ function()
  -- Let Packer Manage Itself
  use { 'wbthomason/packer.nvim' }
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }
  use { 'folke/tokyonight.nvim' }
  use { 'nvim-lua/plenary.nvim' }
  use { 'neovim/nvim-lspconfig' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
  use { 'hrsh7th/cmp-vsnip' }
  use { 'hrsh7th/vim-vsnip' }
  -- use { 'L3MON4D3/LuaSnip' }
  -- use { 'saadparwaiz1/cmp_luasnip' }
  use { 'mfussenegger/nvim-dap' }
  use { 'mfussenegger/nvim-dap-python' }
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
  use { 'nvim-treesitter/nvim-treesitter', 
  	-- run = ':TSUpdate'
	}
  use { "nvim-neorg/neorg", requires = { {'nvim-lua/plenary.nvim',} },
    config = function()
        require("neorg").setup {}
    end,
    -- run = ":Neorg sync-parsers", -- This is the important bit!
  }
  use { "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end
  }
    use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
      }
    end
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = {
      'nvim-lua/plenary.nvim',
      "nvim-neorg/neorg-telescope",
    }
  }
    -- Telescope Extensions
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use { 'nvim-telescope/telescope-project.nvim' }
  use { "chip/telescope-software-licenses.nvim" }
  use { 'TC72/telescope-tele-tabby.nvim' }
  use { 'nvim-telescope/telescope-symbols.nvim' }
  use { "LinArcX/telescope-command-palette.nvim" }
  use { "benfowler/telescope-luasnip.nvim" }
  use { "rafamadriz/friendly-snippets" }
  use { 'sudormrfbin/cheatsheet.nvim', requires = {
          { 'nvim-telescope/telescope.nvim' },
          { 'nvim-lua/popup.nvim' },
          { 'nvim-lua/plenary.nvim' },
        }
      }
  use({ "kelly-lin/telescope-ag", requires = { { "nvim-telescope/telescope.nvim" } } })
  use { "LinArcX/telescope-ports.nvim" }
  use { 'nvim-telescope/telescope-dap.nvim' }
  use { 'nvim-telescope/telescope-packer.nvim' }
  use { 'camgraff/telescope-tmux.nvim' }
  use { 'danielpieper/telescope-tmuxinator.nvim' }
  use { 'alex-laycalvert/telescope-dotfiles.nvim' }
  use { 'andweeb/presence.nvim' }
  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons",
      config = function() require("trouble").setup { } end }
  use { 'akinsho/toggleterm.nvim', tag = '*' }
  use { 'b0o/mapx.nvim' }
  use { 'windwp/nvim-autopairs', config = function() require("nvim-autopairs").setup {} end }
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use { 'simrat39/rust-tools.nvim' }
  use { 'saecki/crates.nvim', tag = 'v0.3.0', requires = { 'nvim-lua/plenary.nvim' },
      config = function() require('crates').setup() end, }
  use { 'puremourning/vimspector' }
  use { 'preservim/tagbar' }
  use { 'rrethy/vim-hexokinase', run = { 'make hexokinase' }}
  use { 'lukas-reineke/indent-blankline.nvim', config = function() require("indent_blankline").setup {
      show_current_context = true, show_current_context_start = true, show_end_of_line = true } end }
  use { 'tpope/vim-surround' }
  use { 'RRethy/vim-illuminate' }
  use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
  use { 'rebelot/kanagawa.nvim' }
  -- use({ 'folke/noice.nvim', config = function()
  --     require("noice").setup({
  --       lsp = {
  --         -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
  --         override = {
  --           ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
  --           ["vim.lsp.util.stylize_markdown"] = true,
  --           ["cmp.entry.get_documentation"] = true,
  --         },
  --       },
  --       -- you can enable a preset for easier configuration
  --       presets = {
  --         bottom_search = true, -- use a classic bottom cmdline for search
  --         command_palette = true, -- position the cmdline and popupmenu together
  --         long_message_to_split = true, -- long messages will be sent to a split
  --         inc_rename = false, -- enables an input dialog for inc-rename.nvim
  --         lsp_doc_border = true, -- add a border to hover docs and signature help
  --       },
  --     })
  --   end,
  --   requires = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify", }
  -- })
  use { 'ray-x/lsp_signature.nvim' }
  use { 'glepnir/dashboard-nvim' }
  use { 'stevearc/aerial.nvim' }
  use { 'anuvyklack/hydra.nvim' }
  use { 'chentoast/marks.nvim' }
  use { 'jbyuki/venn.nvim' }
  use { 'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end }
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim', config = function() require('neogit').setup() end }
  use { 'folke/neodev.nvim' }
  use { 'michaelb/sniprun', run = { 'bash install.sh' } }
  use { 'kevinhwang91/rnvimr' }
  use { 'AckslD/nvim-neoclip.lua', requires = {
      {'kkharji/sqlite.lua', module = 'sqlite'},
      {'nvim-telescope/telescope.nvim'},
      {'ibhagwan/fzf-lua'},
    },
    config = function()
      require('neoclip').setup()
    end,
  }
  use {'hkupty/iron.nvim'}
  use {
    "jose-elias-alvarez/null-ls.nvim",
    "jayp0521/mason-null-ls.nvim",
    }

end,
  config = {
    profile = {
      enable = true,
      threshold = 1
    },
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    },
  }
})
