return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    -- https://github.com/catppuccin/nvim?tab=readme-ov-file#configuration
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Important for colorscheme to load first
    opts = {
      flavour = "frappe",
      default_integrations = true,
    },
  },
}
