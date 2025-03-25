-- https://github.com/kawre/neotab.nvim
-- Tab in/out of brackets, parentheses, quotes, and more in Insert mode. Does not depend on treesitter.
return {
  "kawre/neotab.nvim",
  event = "InsertEnter",
  -- Default configuration
  opts = {
    -- tabkey = "<Tab>",
    -- act_as_tab = true,
    -- behavior = "nested", ---@type ntab.behavior
    -- pairs = { ---@type ntab.pair[]
    --   { open = "(", close = ")" },
    --   { open = "[", close = "]" },
    --   { open = "{", close = "}" },
    --   { open = "'", close = "'" },
    --   { open = '"', close = '"' },
    --   { open = "`", close = "`" },
    --   { open = "<", close = ">" },
    -- },
    -- exclude = {},
    -- smart_punctuators = {
    --   enabled = false,
    --   semicolon = {
    --     enabled = false,
    --     ft = { "cs", "c", "cpp", "java" },
    --   },
    --   escape = {
    --     enabled = false,
    --     triggers = {}, ---@type table<string, ntab.trigger>
    --   },
    -- },
  },
}
