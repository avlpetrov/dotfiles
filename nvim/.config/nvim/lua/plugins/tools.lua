return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = true,
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          never_show = { ".git", ".DS_Store" },
        },
      },
    },
  },
  -- {
  --   "monaqa/dial.nvim",
  --   -- Disable unused keymaps
  --   keys = {
  --     { "<C-a>", false },
  --     { "g<C-a>", false },
  --   },
  -- },
}
