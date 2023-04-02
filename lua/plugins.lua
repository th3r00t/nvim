-- vim: set foldmethod=indent --
-- vim: set tabstop=2 --
return require("packer").startup({
  function()
    -- Let Packer Manage Itself
    use({ "wbthomason/packer.nvim" })
    use({ "williamboman/mason.nvim" })
    use({ "williamboman/mason-lspconfig.nvim" })
    use({ "folke/tokyonight.nvim" })
    use({ "nvim-lua/plenary.nvim" })
    use({ "neovim/nvim-lspconfig" })
    use({ "hrsh7th/cmp-nvim-lsp" })
    use({ "hrsh7th/cmp-buffer" })
    use({ "hrsh7th/cmp-path" })
    use({ "hrsh7th/cmp-cmdline" })
    use({ "hrsh7th/nvim-cmp" })
    -- use { 'hrsh7th/cmp-vsnip' }
    -- use { 'hrsh7th/vim-vsnip' }
    use({ "L3MON4D3/LuaSnip", run = "make install_jsregexp" })
    use({ "saadparwaiz1/cmp_luasnip" })
    use({ "mfussenegger/nvim-dap" })
    use({ "mfussenegger/nvim-dap-python" })
    use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
    use({
      "nvim-treesitter/nvim-treesitter",
      -- run = ':TSUpdate'
    })
    use("nvim-treesitter/nvim-treesitter-context")
    use({
      "folke/which-key.nvim",
      config = function()
        require("which-key").setup({})
      end,
    })
    use({
      "nvim-telescope/telescope.nvim",
      tag = "0.1.0",
      requires = {
        "nvim-lua/plenary.nvim",
        -- "nvim-neorg/neorg-telescope",
      },
    })
    -- Telescope Extensions
    use({ "nvim-telescope/telescope-file-browser.nvim" })
    use({ "nvim-telescope/telescope-project.nvim" })
    use({ "chip/telescope-software-licenses.nvim" })
    use({ "TC72/telescope-tele-tabby.nvim" })
    use({ "nvim-telescope/telescope-symbols.nvim" })
    use({ "LinArcX/telescope-command-palette.nvim" })
    use({ "benfowler/telescope-luasnip.nvim" })
    use({ "rafamadriz/friendly-snippets" })
    use({
      "sudormrfbin/cheatsheet.nvim",
      requires = {
        { "nvim-telescope/telescope.nvim" },
        { "nvim-lua/popup.nvim" },
        { "nvim-lua/plenary.nvim" },
      },
    })
    use({ "kelly-lin/telescope-ag", requires = { { "nvim-telescope/telescope.nvim" } } })
    use({ "LinArcX/telescope-ports.nvim" })
    use({ "nvim-telescope/telescope-dap.nvim" })
    use({ "nvim-telescope/telescope-packer.nvim" })
    use({ "camgraff/telescope-tmux.nvim" })
    -- use { 'danielpieper/telescope-tmuxinator.nvim' }
    use({ "christoomey/vim-tmux-navigator" })
    use({ "alex-laycalvert/telescope-dotfiles.nvim" })
    use({ "tom-anders/telescope-vim-bookmarks.nvim" })
    use({ "andweeb/presence.nvim" })
    use({
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup({})
      end,
    })
    use({ "akinsho/toggleterm.nvim", tag = "*" })
    use({ "b0o/mapx.nvim" })
    use({
      "windwp/nvim-autopairs",
      config = function()
        require("nvim-autopairs").setup({})
      end,
    })
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } })
    use({ "simrat39/rust-tools.nvim" })
    use({
      "saecki/crates.nvim",
      tag = "v0.3.0",
      requires = { "nvim-lua/plenary.nvim" },
      config = function()
        require("crates").setup()
      end,
    })
    use({ "ziglang/zig.vim" })
    use({ "puremourning/vimspector" })
    use({ "preservim/tagbar" })
    use({ "rrethy/vim-hexokinase", run = { "make hexokinase" } })
    use({
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("indent_blankline").setup({
          show_current_context = true,
          show_current_context_start = true,
          show_end_of_line = true,
        })
      end,
    })
    use({ "tpope/vim-surround" })
    use({ "RRethy/vim-illuminate" })
    use({
      "numToStr/Comment.nvim",
      config = function()
        require("Comment").setup()
      end,
    })
    use({ "tpope/vim-rhubarb" })
    use({
      "terrortylor/nvim-comment",
      config = function()
        require("nvim_comment").setup()
      end,
    })
    use({ "rebelot/kanagawa.nvim" })
    use({ "github/copilot.vim" })
    use({ "hrsh7th/cmp-copilot" })
    use({ "rhysd/devdocs.vim" })
    -- use({
    --   "folke/noice.nvim",
    --   config = function()
    --     require("noice").setup({
    --       lsp = {
    --         -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    --         override = {
    --           ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
    --           ["vim.lsp.util.stylize_markdown"] = true,
    --           ["cmp.entry.get_documentation"] = true,
    --         },
    --         signature = {
    --           enabled = true,
    --         },
    --       },
    --       -- you can enable a preset for easier configuration
    --       presets = {
    --         bottom_search = true,   -- use a classic bottom cmdline for search
    --         command_palette = true, -- position the cmdline and popupmenu together
    --         long_message_to_split = true, -- long messages will be sent to a split
    --         inc_rename = false,     -- enables an input dialog for inc-rename.nvim
    --         lsp_doc_border = true,  -- add a border to hover docs and signature help
    --       },
    --     })
    --   end,
    --   requires = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
    -- })
    use({
      "jghauser/mkdir.nvim",
    })
    use({ "Glench/Vim-Jinja2-Syntax" })
    use({ "ray-x/lsp_signature.nvim" })
    -- use { 'glepnir/dashboard-nvim' }
    use({
      "goolord/alpha-nvim",
      requires = { "nvim-tree/nvim-web-devicons" },
      -- config = function ()
      --     require'alpha'.setup(require'alpha.themes.startify'.config)
      -- end
    })
    use({
      "stevearc/aerial.nvim",
      config = function()
        require("aerial").setup()
        vim.api.nvim_set_keymap("n", "<leader>aa", "<cmd>AerialToggle<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap(
          "n",
          "<leader>at",
          "<cmd>AerialToggleType<cr>",
          { noremap = true, silent = true }
        )
        vim.api.nvim_set_keymap(
          "n",
          "<leader>as",
          "<cmd>AerialToggleSymbol<cr>",
          { noremap = true, silent = true }
        )
        vim.api.nvim_set_keymap(
          "n",
          "<leader>ad",
          "<cmd>AerialToggleDocumentation<cr>",
          { noremap = true, silent = true }
        )
        vim.api.nvim_set_keymap(
          "n",
          "<leader>ac",
          "<cmd>AerialToggleCode<cr>",
          { noremap = true, silent = true }
        )
        vim.api.nvim_set_keymap(
          "n",
          "<leader>ah",
          "<cmd>AerialToggleHierarchy<cr>",
          { noremap = true, silent = true }
        )
        vim.api.nvim_set_keymap(
          "n",
          "<leader>ao",
          "<cmd>AerialToggleOutline<cr>",
          { noremap = true, silent = true }
        )
        vim.api.nvim_set_keymap(
          "n",
          "<leader>af",
          "<cmd>AerialToggleFloat<cr>",
          { noremap = true, silent = true }
        )
        vim.api.nvim_set_keymap(
          "n",
          "<leader>ag",
          "<cmd>AerialToggleAll<cr>",
          { noremap = true, silent = true }
        )
      end,
    })
    use({ "anuvyklack/hydra.nvim" })
    use({ "chentoast/marks.nvim" })
    use({ "MattesGroeger/vim-bookmarks" })
    use({ "jbyuki/venn.nvim" })
    use({
      "lewis6991/gitsigns.nvim",
      config = function()
        require("gitsigns").setup()
      end,
    })
    use({
      "TimUntersberger/neogit",
      requires = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" },
      config = function()
        require("neogit").setup({
          disable_signs = false,
          disable_context_highlighting = false,
          disable_commit_confirmation = false,
          -- customize displayed signs
          signs = {
            -- { CLOSED, OPENED }
            section = { "", "" },
            item = { "", "" },
            hunk = { "", "" },
          },
          integrations = {
            diffview = true,
          },
        })
      end,
    })
    use({ "folke/neodev.nvim" })
    use({ "michaelb/sniprun", run = { "bash install.sh" } })
    use({ "kevinhwang91/rnvimr" })
    use({
      "AckslD/nvim-neoclip.lua",
      requires = {
        { "kkharji/sqlite.lua",           module = "sqlite" },
        { "nvim-telescope/telescope.nvim" },
        { "ibhagwan/fzf-lua" },
      },
      config = function()
        require("neoclip").setup()
      end,
    })
    use({
      "princejoogie/dir-telescope.nvim",
      -- telescope.nvim is a required dependency
      requires = { "nvim-telescope/telescope.nvim" },
      config = function()
        require("dir-telescope").setup({
          hidden = true,
          respect_gitignore = true,
        })
      end,
    })
    use({ "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim" })
    use({ "hkupty/iron.nvim" })
    use({ "LokiChaos/vim-tintin" })
    use({
      "jose-elias-alvarez/null-ls.nvim",
      "jayp0521/mason-null-ls.nvim",
    })
    use({
      "Massolari/forem.nvim",
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
      },
    })
    use({ "fenetikm/falcon" })
    use({
      "folke/persistence.nvim",
      event = "BufReadPre", -- this will only start session saving when an actual file was opened
      module = "persistence",
      config = function()
        require("persistence").setup()
      end,
    })
    use({
      "NTBBloodbath/zig-tools.nvim",
      -- Load zig-tools.nvim only in Zig buffers
      ft = "zig",
      config = function()
        -- Initialize with default config
        require("zig-tools").setup({
          formatter = { enable = true },
          auto_compile = { enable = true },
          integrations = {
            package_managers = { "zigmod", "gyro" },
            zls = { hints = true, management = { enable = true } },
          },
        })
      end,
      requires = {
        {
          "akinsho/toggleterm.nvim",
          config = function()
            require("toggleterm").setup()
          end,
        },
        {
          "nvim-lua/plenary.nvim",
          module_pattern = "plenary.*",
        },
      },
    })
    use({ "powerman/vim-plugin-AnsiEsc" })
    use({ "farseer90718/vim-taskwarrior" })
    use({ "vimwiki/vimwiki" })
    use({ "tools-life/taskwiki" })
    -- use { "nvim-neorg/neorg", requires = { {'nvim-lua/plenary.nvim',} },
    --   config = function()
    --       require("neorg").setup {}
    --   end,
    --   -- run = ":Neorg sync-parsers", -- This is the important bit!
    -- }
    --   use {'nvim-orgmode/orgmode',
    --   config = function()
    --     require('orgmode').setup{}
    --   end
    -- }
    use({
      "akinsho/org-bullets.nvim",
      config = function()
        require("org-bullets").setup()
      end,
    })
    use({ "dhruvasagar/vim-table-mode" })
    -- use {
    --         'lukas-reineke/headlines.nvim',
    --         config = function()
    --             require('headlines').setup()
    --         end,
    --     }

    use({
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup({})
      end,
    })

    use({ "evanleck/vim-svelte" })
    use({ "pangloss/vim-javascript" })
    use({ "HerringtonDarkholme/yats.vim" })
    use({ "francoiscabrol/ranger.vim", requires = { "rbgrouleff/bclose.vim" } })

    use({
      "akinsho/nvim-bufferline.lua",
      requires = "nvim-tree/nvim-web-devicons",
      config = function()
        require("bufferline").setup({
          options = {
            diagnostics = "nvim_lsp",
            offsets = {
              {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left",
              },
            },
            separator_style = "slant",
            hover = {
              enabled = true,
              delay = 200,
              reveal = { "close" },
              sort_by = "tabs",
            },
            mode = "tabs",
          },
        })
      end,
    })

    --[[ use({
      "sunjon/shade.nvim",
      config = function()
        require("shade").setup({
          overlay_opacity = 50,
          opacity_step = 1,
          keys = {
            brightness_up = "<C-Up>",
            brightness_down = "<C-Down>",
            toggle = "<Leader>s",
          },
        })
      end,
    }) ]]
    use({ "vifm/vifm.vim" })
    use({ "gennaro-tedesco/nvim-peekup" })
    use({ "nvim-pack/nvim-spectre" })
    use({
      "ziontee113/color-picker.nvim",
      config = function()
        require("color-picker")
      end,
    })
    use({ "rockerBOO/boo-colorscheme-nvim" })

    use({
      "jose-elias-alvarez/typescript.nvim",
      config = function()
        require("typescript").setup({
          disable_commands = false, -- prevent the plugin from creating Vim commands
          debug = false,       -- enable debug logging for commands
          go_to_source_definition = {
            fallback = true,   -- fall back to standard LSP definition on failure
          },
          server = {           -- pass options to lspconfig's setup method
            -- on_attach = ...,
          },
        })
      end,
    })

    use({
      "ray-x/navigator.lua",
      requires = {
        { "ray-x/guihua.lua",     run = "cd lua/fzy && make" },
        { "neovim/nvim-lspconfig" },
      },
      config = function()
        require("navigator").setup()
      end,
    })
    use({
      "gennaro-tedesco/nvim-jqx",
      config = function()
        local jqx = vim.api.nvim_create_augroup("Jqx", {})
        vim.api.nvim_clear_autocmds({ group = jqx })
        vim.api.nvim_create_autocmd("BufWinEnter", {
          pattern = { "*.json", "*.yaml" },
          desc = "preview json and yaml on open",
          group = jqx,
          callback = function()
            vim.cmd.JqxList()
          end,
        })
      end,
    })

    use({
      "stevearc/dressing.nvim",
      config = function()
        require("dressing").setup()
      end,
    })

    use({
      "AckslD/swenv.nvim",
      config = function()
        require("swenv").setup({
          -- Should return a list of tables with a `name` and a `path` entry each.
          -- Gets the argument `venvs_path` set below.
          -- By default just lists the entries in `venvs_path`.
          get_venvs = function(venvs_path)
            return require("swenv.api").get_venvs(venvs_path)
          end,
          -- Path passed to `get_venvs`.
          venvs_path = vim.fn.expand("~/.local/share/virtualenvs/"),
          -- Something to do after setting an environment
          post_set_venv = nil,
        })
      end,
    })

    use({
      "rest-nvim/rest.nvim",
      requires = { "nvim-lua/plenary.nvim" },
      config = function()
        require("rest-nvim").setup({
          -- Open request results in a horizontal split
          result_split_horizontal = false,
          -- Keep the http file buffer above|left when split horizontal|vertical
          result_split_in_place = false,
          -- Skip SSL verification, useful for unknown certificates
          skip_ssl_verification = false,
          -- Encode URL before making request
          encode_url = true,
          -- Highlight request on run
          highlight = {
            enabled = true,
            timeout = 150,
          },
          result = {
            -- toggle showing URL, HTTP info, headers at top the of result window
            show_url = true,
            show_http_info = true,
            show_headers = true,
            -- executables or functions for formatting response body [optional]
            -- set them to false if you want to disable them
            formatters = {
              json = "jq",
              html = function(body)
                return vim.fn.system({ "tidy", "-i", "-q", "-" }, body)
              end,
            },
          },
          -- Jump to request line on run
          jump_to_request = false,
          env_file = ".env",
          custom_dynamic_variables = {},
          yank_dry_run = true,
        })
      end,
    })

    use({ "jubnzv/mdeval.nvim" })

    use({
      "stevearc/oil.nvim",
      config = function()
        require("oil").setup()
      end,
    })
    use({
      "utilyre/barbecue.nvim",
      tag = "*",
      requires = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons", -- optional dependency
      },
      after = "nvim-web-devicons", -- keep this if you're using NvChad
      config = function()
        require("barbecue").setup()
      end,
    })
    use({ "mikesoylu/ai.vim" })
    -- DO NOT EDIT BELOW THIS LINE --
  end,
  config = {
    profile = {
      enable = true,
      threshold = 1,
    },
    display = {
      open_fn = function()
        return require("packer.util").float({ border = "single" })
      end,
    },
  },
})
