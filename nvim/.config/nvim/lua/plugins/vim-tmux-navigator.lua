-- https://github.com/christoomey/vim-tmux-navigator
--
-- Allows to switch between neovim and tmux panes with Ctrl+h/j/k/l

return {
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      -- Switch to ther panes not only in normal, but also in insert and visual mode
      { "<C-h>", '<cmd>TmuxNavigateLeft("n")<cr>', mode = { "n", "v", "i" }, desc = "TmuxNavigateLeft" },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>", mode = { "n", "v", "i" }, desc = "TmuxNavigateDown" },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>", mode = { "n", "v", "i" }, desc = "TmuxNavigateUp" },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>", mode = { "n", "v", "i" }, desc = "TmuxNavigateRight" },
      { "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>", mode = { "n", "v", "i" }, desc = "TmuxNavigatePrevious" },
    },
  },
}
