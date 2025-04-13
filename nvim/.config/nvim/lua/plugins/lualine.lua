-- https://github.com/nvim-lualine/lualine.nvim
--
-- https://www.lazyvim.org/plugins/ui#lualinenvim
return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_z = {
          function()
            return " " .. os.date("%a, %b %e, %H:%M")
          end,
        },
      },
    },
  },
}
