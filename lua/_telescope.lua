require('telescope').setup {
  defaults = {
    layout_config = { horizontal = { width = 0.8 } }
  },
  pickers = {
    find_files = {
      theme = "ivy",
    },
    git_files = {
      theme = "ivy",
    },
    grep_string = {
      theme = "dropdown",
    },
    live_grep = {
      theme = "dropdown",
    },
    buffers = {
      theme = "ivy",
    },
    old_files = {
      theme = "ivy",
    },
    commands = {
      theme = "ivy",
    },
    tags = {
      theme = "dropdown",
    },
    command_history = {
      theme = "ivy",
    },
    search_history = {
      theme = "dropdown",
    },
    help_tags = {
      theme = "ivy",
    },
    man_pages = {
      theme = "ivy",
    },
    marks = {
      theme = "ivy",
    },
    colorscheme = {
      theme = "dropdown",
    },
    quickfix = {
      theme = "dropdown",
    },
    vim_options = {
      theme = "dropdown",
    },
    registers = {
      theme = "ivy",
    },
    treesitter = {
      theme = "dropdown",
    }
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      hijack_netrw = false,
    },
    command_palette = {
      {"File",
        { "entire selection (C-a)", ':call feedkeys("GVgg")' },
        { "save current file (C-s)", ':w' },
        { "save all files (C-A-s)", ':wa' },
        { "quit (C-q)", ':qa' },
        { "file browser (C-i)", ":lua require'telescope'.extensions.file_browser.file_browser()", 1 },
        { "search word (A-w)", ":lua require('telescope.builtin').live_grep()", 1 },
        { "git files (A-f)", ":lua require('telescope.builtin').git_files()", 1 },
        { "files (C-f)",     ":lua require('telescope.builtin').find_files()", 1 },
      },
      {"Help",
        { "tips", ":help tips" },
        { "cheatsheet", ":help index" },
        { "tutorial", ":help tutor" },
        { "summary", ":help summary" },
        { "quick reference", ":help quickref" },
        { "search help(F1)", ":lua require('telescope.builtin').help_tags()", 1 },
      },
      {"Vim",
        { "reload vimrc", ":source $MYVIMRC" },
        { 'check health', ":checkhealth" },
        { "jumps (Alt-j)", ":lua require('telescope.builtin').jumplist()" },
        { "commands", ":lua require('telescope.builtin').commands()" },
        { "command history", ":lua require('telescope.builtin').command_history()" },
        { "registers (A-e)", ":lua require('telescope.builtin').registers()" },
        { "colorshceme", ":lua require('telescope.builtin').colorscheme()", 1 },
        { "vim options", ":lua require('telescope.builtin').vim_options()" },
        { "keymaps", ":lua require('telescope.builtin').keymaps()" },
        { "buffers", ":Telescope buffers" },
        { "search history (C-h)", ":lua require('telescope.builtin').search_history()" },
        { "paste mode", ':set paste!' },
        { 'cursor line', ':set cursorline!' },
        { 'cursor column', ':set cursorcolumn!' },
        { "spell checker", ':set spell!' },
        { "relative number", ':set relativenumber!' },
        { "search highlighting (F12)", ':set hlsearch!' },
      }
    },
  dotfiles = {
    config_dir = '/home/th3r00t/.dotfiles/'
  },
  aerial = {
    show_nesting = {
      ['_'] = false,
      json = true,
      yaml = true,
    }
  }
  }
}
require'telescope'.load_extension('project')
require'telescope'.load_extension('file_browser')
require'telescope'.load_extension('ag')
require('telescope').load_extension('ports')
require('telescope').load_extension('dap')
require("telescope").load_extension("packer")
require("telescope").load_extension("tmux")
require('telescope').load_extension('tmuxinator')
--require('telescope').load_extension('symbols')
require('telescope').load_extension('command_palette')
require('telescope').load_extension('luasnip')
require('telescope').load_extension('dotfiles')
require('telescope').load_extension('aerial')
require('telescope').load_extension('neoclip')
