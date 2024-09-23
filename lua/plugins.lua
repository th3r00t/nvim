local vim = vim

return {
  "folke/which-key.nvim",
  "vijaymarupudi/nvim-fzf",
  { "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup({})
    end
  },
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {
    transparent = false, dim_inactive = true, lualine_bold = true },
  },
  { "nvim-lualine/lualine.nvim", lazy = false, dependencies = { "nvim-tree/nvim-web-devicons",  },
    opts = {},
  },
  { "nvim-telescope/telescope.nvim", tag = '0.1.2', dependencies = { "nvim-lua/plenary.nvim" } },
  { 'nvim-telescope/telescope-project.nvim' },
  { "nvim-telescope/telescope-file-browser.nvim" },
  { "nvim-telescope/telescope-project.nvim" },
  -- { "chip/telescope-software-licenses.nvim" },
  { "TC72/telescope-tele-tabby.nvim" },
  { "nvim-telescope/telescope-symbols.nvim" },
  { "LinArcX/telescope-command-palette.nvim" },
  { "benfowler/telescope-luasnip.nvim" },
  {
    "sudormrfbin/cheatsheet.nvim",
    dependencies = {
      { "nvim-telescope/telescope.nvim" },
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
    },
  },
  { "kelly-lin/telescope-ag", requires = { { "nvim-telescope/telescope.nvim" } } },
  { "LinArcX/telescope-ports.nvim" },
  { "nvim-telescope/telescope-dap.nvim" },
  { "nvim-telescope/telescope-packer.nvim" },
  { "camgraff/telescope-tmux.nvim" },
  -- { 'danielpieper/telescope-tmuxinator.nvim' },
  { "christoomey/vim-tmux-navigator" },
  { "alex-laycalvert/telescope-dotfiles.nvim" },
  { "tom-anders/telescope-vim-bookmarks.nvim" },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  },
  { "prichrd/netrw.nvim", config = function()
    require'netrw'.setup{
      icons = {
        symlink = '', -- Symlink icon (directory and file)
        directory = '', -- Directory icon
        file = '', -- File icon
      },
      use_devicons = true, -- Uses nvim-web-devicons if true, otherwise use the file icon specified above
      mappings = {
        ['p'] = function(payload)
          print(vim.inspect(payload))
        end,
      }, -- Custom key mappings
    }
  end,
  },
  { 'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function ()
      local configs = require('nvim-treesitter.configs')
      configs.setup({
        ensure_installed = {
          "c", "lua", "vim", "vimdoc", "query", "python", "rust", "zig",
        },
        sync_install = { false },
        highlight = { enable = true },
        indent = { enable = true, disable = { "norg" }, },
      })
    end
  },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },
  { 'L3MON4D3/LuaSnip' },
  { 'saadparwaiz1/cmp_luasnip'},
  -- { 'zbirenbaum/copilot.lua',
  --   config = function ()
  --     require("copilot").setup({
  --       suggestion = { enabled = false },
  --       panel = { enabled = false },
  --     })
  --   end
  -- },
  -- {
  --   "zbirenbaum/copilot-cmp",
  --   config = function ()
  --     require("copilot_cmp").setup()
  --   end
  -- },
  {'akinsho/toggleterm.nvim', version = "*",
    opts = {
      size = 20,
      hide_numbers = true,
      shade_terminals = true,
      shading_factor = .5,
      border = 'curved',
    }
  },
  -- {'luk400/vim-jukit'},
  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      animation = true,
      insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  { 'ThePrimeagen/harpoon' },
  { 'NTBBloodbath/zig-tools.nvim',
    config = function ()
      require("zig-tools").setup({
        zigtools_config = {
          --- Commands to interact with your project compilation
          ---@type boolean
          expose_commands = true,
          --- Format source code
          ---@type table
          formatter = {
            --- Enable formatting, create commands
            ---@type boolean
            enable = true,
            --- Events to run formatter, empty to disable
            ---@type table
            events = {},
          },
          --- Check for compilation-time errors
          ---@type table
          checker = {
            --- Enable checker, create commands
            ---@type boolean
            enable = true,
            --- Run before trying to compile?
            ---@type boolean
            before_compilation = true,
            --- Events to run checker
            ---@type table
            events = {},
          },
          --- Project compilation helpers
          ---@type table
          project = {
            --- Extract all build tasks from `build.zig` and expose them
            ---@type boolean
            build_tasks = true,
            --- Enable rebuild project on save? (`:ZigLive` command)
            ---@type boolean
            live_reload = true,
            --- Extra flags to be passed to compiler
            ---@type table
            flags = {
              --- `zig build` flags
              ---@type table
              -- build = {"--prominent-compile-errors"},
              build = {""},
              --- `zig run` flags
              ---@type table
              run = {},
            },
            --- Automatically compile your project from within Neovim
            auto_compile = {
              --- Enable automatic compilation
              ---@type boolean
              enable = true,
              --- Automatically run project after compiling it
              ---@type boolean
              run = true,
            },
          },
          --- zig-tools.nvim integrations
          ---@type table
          integrations = {
            --- Third-party Zig packages manager integration
            ---@type table
            package_managers = {"zigmod", "gyro"},
            --- Zig Language Server
            ---@type table
            zls = {
              --- Enable inlay hints
              ---@type boolean
              hints = true,
              --- Manage installation
              ---@type table
              management = {
                --- Enable ZLS management
                ---@type boolean
                enable = true,
                --- Installation path
                --@type string
                -- install_path = os.getenv("HOME") .. "/.local/bin",
                install_path = "/usr/bin/",
                --- Source path (where to clone repository when building from source)
                --@type string
                -- source_path = os.getenv("HOME") .. "/.local/zig/zls",
              },
            },
          }}
      })
    end,
  },
  { 'mfussenegger/nvim-dap' },
  { 'ldelossa/nvim-dap-projects' },
  { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "luvit-meta/library", words = { "vim%.uv" } },
      },
    },
  },
  { "Bilal2453/luvit-meta", lazy = true }, -- optional `vim.uv` typings
  { -- optional completion source for require statements and module annotations
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, {
        name = "lazydev",
        group_index = 0, -- set group index to 0 to skip loading LuaLS completions
      })
    end,
  },
  { 'simrat39/rust-tools.nvim', config = function () require('rust-tools').setup() end },
  { 'saecki/crates.nvim', config = function () require('crates').setup() end },
  { 'rrethy/vim-hexokinase', build = "make hexokinase" },
  { 'tpope/vim-fugitive' },
  -- { 'vimwiki/vimwiki' },
  -- {
  --   "lukas-reineke/headlines.nvim",
  --   dependencies = "nvim-treesitter/nvim-treesitter",
  --   config = true, -- or `opts = {}`
  -- },
  {
    "dbaileychess/vim-screeps"
  },
  {
    "michaelb/sniprun",
    branch = "master",

    build = "sh install.sh",
    -- do 'sh install.sh 1' if you want to force compile locally
    -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

    config = function()
      require("sniprun").setup({
        -- your options
      })
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    'vyfor/cord.nvim',
    build = './build || .\\build',
    event = 'VeryLazy',
    opts = {

      usercmds = true,                              -- Enable user commands
      log_level = 'error',                          -- One of 'trace', 'debug', 'info', 'warn', 'error', 'off'
      timer = {
        interval = 1500,                            -- Interval between presence updates in milliseconds (min 500)
        reset_on_idle = false,                      -- Reset start timestamp on idle
        reset_on_change = false,                    -- Reset start timestamp on presence change
      },
      editor = {
        image = nil,                                -- Image ID or URL in case a custom client id is provided
        client = 'neovim',                          -- vim, neovim, lunarvim, nvchad, astronvim or your application's client id
        tooltip = 'The Superior Text Editor',       -- Text to display when hovering over the editor's image
      },
      display = {
        show_time = true,                           -- Display start timestamp
        show_repository = true,                     -- Display 'View repository' button linked to repository url, if any
        show_cursor_position = false,               -- Display line and column number of cursor's position
        swap_fields = false,                        -- If enabled, workspace is displayed first
        swap_icons = false,                         -- If enabled, editor is displayed on the main image
        workspace_blacklist = {},                   -- List of workspace names that will hide rich presence
      },
      lsp = {
        show_problem_count = false,                 -- Display number of diagnostics problems
        severity = 1,                               -- 1 = Error, 2 = Warning, 3 = Info, 4 = Hint
        scope = 'workspace',                        -- buffer or workspace
      },
      idle = {
        enable = true,                              -- Enable idle status
        show_status = true,                         -- Display idle status, disable to hide the rich presence on idle
        timeout = 300000,                           -- Timeout in milliseconds after which the idle status is set, 0 to display immediately
        disable_on_focus = false,                   -- Do not display idle status when neovim is focused
        text = 'Idle',                              -- Text to display when idle
        tooltip = '💤',                             -- Text to display when hovering over the idle image
      },
      text = {
        viewing = 'Viewing {}',                     -- Text to display when viewing a readonly file
        editing = 'Editing {}',                     -- Text to display when editing a file
        file_browser = 'Browsing files in {}',      -- Text to display when browsing files (Empty string to disable)
        plugin_manager = 'Managing plugins in {}',  -- Text to display when managing plugins (Empty string to disable)
        lsp_manager = 'Configuring LSP in {}',      -- Text to display when managing LSP servers (Empty string to disable)
        vcs = 'Committing changes in {}',           -- Text to display when using Git or Git-related plugin (Empty string to disable)
        workspace = 'In {}',                        -- Text to display when in a workspace (Empty string to disable)
      },
      buttons = {
        {
          label = 'View Repository',                -- Text displayed on the button
          url = 'git',                              -- URL where the button leads to ('git' = automatically fetch Git repository URL)
        },
        -- {
        --   label = 'View Plugin',
        --   url = 'https://github.com/vyfor/cord.nvim',
        -- }
      },
      assets = nil,                                 -- Custom file icons, see the wiki*
      -- assets = {
      --   lazy = {                                 -- Vim filetype or file name or file extension = table or string
      --     name = 'Lazy',                         -- Optional override for the icon name, redundant for language types
      --     icon = 'https://example.com/lazy.png', -- Rich Presence asset name or URL
      --     tooltip = 'lazy.nvim',                 -- Text to display when hovering over the icon
      --     type = 2,                              -- 0 = language, 1 = file browser, 2 = plugin manager, 3 = lsp manager, 4 = vcs; defaults to language
      --   },
      --   ['Cargo.toml'] = 'crates',
      -- },
    }, -- calls require('cord').setup()
  },
  { 'phelipetls/vim-hugo' },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  { "pysan3/neorg-templates" },
  {
    "nvim-neorg/neorg",
    lazy = false,
    version = "*", -- pin neorg to the latest stable release
    -- config = true,
    config = function()
      require("neorg").setup{
        load = {
          ["core.defaults"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                tasks = "~/org/tasks",
                projects = "~/org/projects",
                journal = "~/org/journal",
                notes = "~/org/notes",
              },
              default_workspace = "notes",
              index = "index.norg",
            },
          },
          ["core.concealer"] = { config = { icon_preset = "varied" } },
          ["core.completion"] = { config = { engine = "nvim-cmp" } },
          ["core.integrations.nvim-cmp"] = {},
          ["core.integrations.treesitter"] = {
            config = {
              configure_parsers = true,
              install_parsers = true,
            }
          },
          ["core.highlights"] = {},
          -- ["core.latex.renderer"] = {},
          -- ["core.export.markdown"] = {
          --   config = {
          --     extensions = "all"
          --   }
          -- },
          ["core.summary"] = {},
          ["core.syntax"] = {},
          -- ["core.autocommands"] = {},
          ["core.journal"] = {
            config = {
              journal_folder = "~/org/journal",
            }
          },
          ["core.keybinds"] = {},
          ["core.neorgcmd"] = {},
          ["core.integrations.telescope"] = {},
          ["external.templates"] = {
            -- templates_dir = vim.fn.stdpath("config") .. "/templates/norg",
            -- default_subcommand = "add", -- or "fload", "load"
            -- keywords = { -- add your own keywords.
            --   example_keyword = function ()
            --     return require("luasnip").insert_node(1, "default text blah blah")
            --   end,
            -- },
            -- snippets_overwrite = {},
          },
          ["core.esupports.metagen"] = {},
          ["core.export"] = {},
          ["core.ui.calendar"] = {},
        }
      }
    end,
    ft = "norg",
  },
  { "nvim-neorg/neorg-telescope" },
  {
    "ribelo/taskwarrior.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    -- or 
    config = true
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  -- =============================================

  { "lewis6991/hover.nvim",
    config = function()
      require("hover").setup {
        init = function()
          -- Require providers
          require("hover.providers.lsp")
          -- require('hover.providers.gh')
          -- require('hover.providers.gh_user')
          -- require('hover.providers.jira')
          require('hover.providers.dap')
          -- require('hover.providers.fold_preview')
          require('hover.providers.diagnostic')
          require('hover.providers.man')
          -- require('hover.providers.dictionary')
        end,
        preview_opts = {
          border = 'single'
        },
        preview_window = false,
        title = true,
        mouse_providers = {
          'LSP'
        },
        mouse_delay = 1000
      }
      vim.keymap.set("n", "K", require("hover").hover, {desc = "hover.nvim"})
      vim.keymap.set("n", "gK", require("hover").hover_select, {desc = "hover.nvim (select)"})
      vim.keymap.set("n", "<C-p>", function() require("hover").hover_switch("previous") end, {desc = "hover.nvim (previous source)"})
      vim.keymap.set("n", "<C-n>", function() require("hover").hover_switch("next") end, {desc = "hover.nvim (next source)"})

      -- Mouse support
      vim.keymap.set('n', '<MouseMove>', require('hover').hover_mouse, { desc = "hover.nvim (mouse)" })
      vim.o.mousemoveevent = true
    end,
  },
  { "girishji/pythondoc.vim" },
  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
       "nvim-treesitter/nvim-treesitter",
       "nvim-tree/nvim-web-devicons"
    },
    config = function() require("aerial").setup({
      on_attach = function(bufnr)
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
      end,
      vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
    })
    end,
  },
	{
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {},
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
},
	{
	   "huantrinh1802/m_taskwarrior_d.nvim",
	   version = "*",
	   dependencies = { "MunifTanjim/nui.nvim", 'MeanderingProgrammer/render-markdown.nvim',},
	   config = function()
	   -- Require
	     require("m_taskwarrior_d").setup()
	   -- Optional
	     vim.api.nvim_set_keymap("n", "<leader>oT", "", { desc = "TaskWarrior", noremap = true, silent = true })
	     vim.api.nvim_set_keymap("n", "<leader>oTe", "<cmd>TWEditTask<cr>", { desc = "TaskWarrior Edit", noremap = true, silent = true })
	     vim.api.nvim_set_keymap("n", "<leader>oTv", "<cmd>TWView<cr>", { noremap = true, silent = true })
	     vim.api.nvim_set_keymap("n", "<leader>oTu", "<cmd>TWUpdateCurrent<cr>", { noremap = true, silent = true })
	     vim.api.nvim_set_keymap("n", "<leader>oTs", "<cmd>TWSyncTasks<cr>", { noremap = true, silent = true })
	     vim.api.nvim_set_keymap(
	       "n",
	       "<c-'>",
	       "<cmd>TWToggle<cr>",
	       { silent = true }
	     )
	   -- Be caution: it may be slow to open large files, because it scan the whole buffer
	     vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
	       group = vim.api.nvim_create_augroup("TWTask", { clear = true }),
	       pattern = "*.md,*.markdown", -- Pattern to match Markdown files
	       callback = function()
	         vim.cmd('TWSyncTasks')
	       end,
	     })
	   end,
	 },
  -- BELOW IS FOR TESTING PLUGINS --
  -- ALL ITEMS NEW
  { "vimwiki/vimwiki" },
  { "tools-life/taskwiki" },
  -- { "blindFS/vim-taskwarrior" },
}
