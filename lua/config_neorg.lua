require('neorg').setup {
  load = {
    ["core.keybinds"] = {
      config = {
      }
    },
    ["core.defaults"] = {},
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          work = "~/notes/work",
          home = "~/notes/home"
        }
      }
    },
    ["core.norg.concealer"] = {},
    ["core.norg.qol.toc"] = {},
    ["core.norg.journal"] = {
      config = {
        workspace = "home"
      }
    },
    ["core.export"] = {},
    ["core.norg.manoeuvre"] = {},
    -- ["core.norg.completion"] = {config = {engine = 'nvim-cmp'}},
    ["core.integrations.treesitter"] = {
      config = {
        configure_parsers = true,
        install_parsers = true,
      }
    },
    ["core.norg.esupports.metagen"] = {
      config = { type = auto, update_date = true }
    },
    ["core.integrations.nvim-cmp"] = { config = {} },
    ["core.integrations.telescope"] = {},
  }
}
