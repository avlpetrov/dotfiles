return {
  {
    "neovim/nvim-lspconfig",
    ---@class pluginlspopts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- https://docs.astral.sh/ruff/editors/settings/#configurationpreference
        ruff = {
          enabled = true,
        },
        -- https://github.com/python-lsp/python-lsp-server/blob/develop/CONFIGURATION.md
        pylsp = {
          enabled = true,
          settings = {
            pylsp = {
              plugins = {
                rope_autoimport = {
                  enabled = true,
                },

                -- Formatting
                yapf = { enabled = false },

                -- Default Linting
                pylint = { enabled = false, executable = "pylint" },
                autopep8 = { enabled = false },
                pyflakes = { enabled = false },
                mccabe = { enabled = false },
                pycodestyle = { enabled = false },
              },
            },
          },
        },
        -- pyright will be automatically installed with mason and loaded with lspconfig
        -- https://github.com/microsoft/pyright/blob/main/docs/settings.md
        pyright = {
          enabled = false,
          settings = {
            python = {
              analysis = {
                typecheckingmode = "basic",
                autoimportcompletions = true,
                autosearchpaths = true,
                diagnosticmode = "workspace",
                uselibrarycodefortypes = true,
              },
            },
          },
        },
      },
    },
  },
}
