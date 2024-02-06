return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    -- priority = 1000,
    -- config = function()
    --   require("tokyonight").setup({
    --     styles = {
    --       comments = { italic = false },
    --       keywords = { italic = false },
    --       functions = {},
    --       variables = {},
    --     },
    --   })
    --   vim.cmd.colorscheme("tokyonight")
    -- end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "frappe",
        no_italic = true,
        styles = {
          -- comments = { "NONE" },
          -- conditionals = { "NONE" },
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
