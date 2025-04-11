-- https://github.com/epwalsh/obsidian.nvim
return {
  "epwalsh/obsidian.nvim",
  enabled = true,
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see docs for full list of optional dependencies
    -- https://github.com/epwalsh/obsidian.nvim?tab=readme-ov-file#configuration-options
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/Documents/Personal/Obsidian/Vault/mind-vault",
      },
    },
    ui = {
      enable = false,
    },
    disable_frontmatter = true, -- Disable frontmatter handling and autoformatting
    templates = {
      folder = "~/Documents/Personal/Obsidian/Vault/mind-vault/Notes/Templates",
    },
    -- see docs for full list of options
    -- https://github.com/epwalsh/obsidian.nvim?tab=readme-ov-file#configuration-options
  },
}
