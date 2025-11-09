return {
  {
    "neovim/nvim-lspconfig",
    ---@class pluginlspopts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- https://docs.astral.sh/ruff/editors/settings/#configurationpreference
        ruff = {
          enabled = false,
          init_options = {
            settings = {
              lineLength = 120,
              organizeImports = true,
              showSyntaxErrors = false,
              configurationPreference = "filesystemFirst",
              lint = {
                select = { "E", "F" },
              },
            },
          },
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
          enabled = true,
          settings = {
            pyright = {
              disableLanguageServices = true,
              disableOrganizeImports = true,
              disableTaggedHints = true,
            },
            python = {
              analysis = {
                diagnosticMode = "off",
                typeCheckingMode = "basic",
                autoimportcompletions = false,
                autosearchpaths = false,
                -- diagnosticmode = "workspace",
                -- uselibrarycodefortypes = true,
              },
            },
          },
        },
      },
    },
  },
}
