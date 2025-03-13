return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Important for colorscheme to load first
    default_integrations = true,
    opts = {
      flavour = "frappe",
    },
  },
}
