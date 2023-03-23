local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.xo,
    -- null_ls.builtins.diagnostics.luacheck,
    null_ls.builtins.diagnostics.pycodestyle,
    null_ls.builtins.diagnostics.pydocstyle,
    null_ls.builtins.diagnostics.shellcheck,
    null_ls.builtins.diagnostics.todo_comments,
    null_ls.builtins.diagnostics.tsc,
    null_ls.builtins.diagnostics.vint,
    null_ls.builtins.diagnostics.vulture,
    null_ls.builtins.diagnostics.write_good,
    -- null_ls.builtins.diagnostics.ansiblelint,
    null_ls.builtins.diagnostics.clang_check,
    -- null_ls.builtins.diagnostics.cmake_lint,
    null_ls.builtins.diagnostics.codespell,
    null_ls.builtins.diagnostics.commitlint,
    null_ls.builtins.diagnostics.cppcheck,
    null_ls.builtins.diagnostics.cpplint,
    null_ls.builtins.diagnostics.djlint,
    -- null_ls.builtins.diagnostics.dotenv_linter,
    -- null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.diagnostics.hadolint,
    -- null_ls.builtins.diagnostics.jshint,
    null_ls.builtins.diagnostics.jsonlint,
    null_ls.builtins.formatting.stylua,
    -- null_ls.builtins.formatting.asmfmt,
    --null_ls.builtins.code_actions.eslint_d,
    null_ls.builtins.code_actions.gitsigns,
    -- null_ls.builtins.code_actions.ltrs,
    null_ls.builtins.code_actions.proselint,
    null_ls.builtins.code_actions.shellcheck,
    null_ls.builtins.code_actions.xo,
    --null_ls.builtins.completion.spell,
    null_ls.builtins.completion.luasnip,
    null_ls.builtins.formatting.zigfmt,
    null_ls.builtins.hover.dictionary,
    null_ls.builtins.hover.printenv,
    -- null_ls.builtins.formatting.yapf,
    -- null_ls.builtins.formatting.usort,
    null_ls.builtins.formatting.taplo,
    null_ls.builtins.formatting.stylua,
    -- null_ls.builtins.formatting.stylelint,
    -- null_ls.builtins.formatting.standardts,
    -- null_ls.builtins.formatting.standardjs,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.shellharden,
    null_ls.builtins.formatting.rustfmt,
    require("typescript.extensions.null-ls.code-actions"),
  },
})

require("mason-null-ls").setup({
  -- A list of sources to install if they're not already installed.
  -- This setting has no relation with the `automatic_installation` setting.
  ensure_installed = {
    "stylua",
    "eslint_d",
    "xo",
    "luasnip",
    "cbfmt",
    "cpplint",
    "clang_format",
    "djlint",
    "hadolint",
    "prettierd",
    "jq",
    "autopep8",
    "black",
    "flake8",
    "isort",
    "pylint",
    "yapf",
    "sql_formatter",
    "taplo",
    "vint",
    "yamlfmt",
    "editorconfig_checker",
    "missspell",
    "rustfmt",
    "rust_analyzer",
    "shfmt",
    "shellharden",
    "solargraph",
    "tflint",
    "terraform",
  },
  -- Run `require("null-ls").setup`.
  -- Will automatically install masons tools based on selected sources in `null-ls`.
  -- Can also be an exclusion list.
  -- Example: `automatic_installation = { exclude = { "rust_analyzer", "solargraph" } }`
  automatic_installation = true,
  -- Whether sources that are installed in mason should be automatically set up in null-ls.
  -- Removes the need to set up null-ls manually.
  -- Can either be:
  -- 	- false: Null-ls is not automatically registered.
  -- 	- true: Null-ls is automatically registered.
  -- 	- { types = { SOURCE_NAME = {TYPES} } }. Allows overriding default configuration. Ex: { types = { eslint_d = {'formatting'} } }
  automatic_setup = true,
})
require("null-ls").setup({ sources = { require("mason-null-ls").sources } })
