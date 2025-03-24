return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        -- Disable linting for Markdown by default.
        -- https://github.com/LazyVim/LazyVim/issues/2437#issuecomment-1913251896
        --
        -- Can be turned on manually by running `:lua require("lint").try_lint("markdownlint")`
        markdown = {},
      },
    },
  },
}
