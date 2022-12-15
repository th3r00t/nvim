local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
        null_ls.builtins.code_actions.eslint_d,
        null_ls.builtins.code_actions.xo,
        null_ls.builtins.completion.luasnip,
    },
})

require("mason-null-ls").setup({
    -- A list of sources to install if they're not already installed.
    -- This setting has no relation with the `automatic_installation` setting.
    -- ensure_installed = {'stylua', 'eslint_d', 'xo', 'luasnip', 'cbfmt', 'cpplint', 'clang_format', 'djlint', 'hadolint', 'prettierd', 'jq', 'autopep8', 'black', 'flake8', 'isort', 'pylint', 'yapf', 'sql_formatter', 'taplo', 'vint', 'yamlfmt', 'editorconfig_checker', 'missspell'},
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
