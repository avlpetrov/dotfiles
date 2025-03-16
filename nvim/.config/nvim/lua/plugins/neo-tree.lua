return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
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
}
