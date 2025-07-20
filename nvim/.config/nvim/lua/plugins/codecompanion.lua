return {
  "olimorris/codecompanion.nvim",
  enabled = false,
  config = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    adapters = {
      ollama = function()
        return require("codecompanion.adapters").extend("ollama", {
          schema = {
            model = {
              -- default = "deepseek-r1:14b",
              default = "qwen2.5-coder:14b",
            },
            num_ctx = {
              default = 20000,
            },
          },
        })
      end,
    },
    strategies = {
      chat = {
        adapter = "ollama",
      },
      inline = {
        adapter = "ollama",
      },
    },
  },
}
