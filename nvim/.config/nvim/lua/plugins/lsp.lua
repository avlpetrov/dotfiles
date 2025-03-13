return {
  {
    "neovim/nvim-lspconfig",
    ---@class pluginlspopts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- https://github.com/python-lsp/python-lsp-server/blob/develop/CONFIGURATION.md
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                rope_autoimport = {
                  enabled = true,
                },
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
