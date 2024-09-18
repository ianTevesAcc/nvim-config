return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        transparent_background = true, -- Enable transparency for Catppuccin
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      })
    end,
  },
  { "rose-pine/neovim", name = "rose-pine" },
  { "folke/tokyonight.nvim", name = "tokyonight" },
  { "Mofiqul/dracula.nvim", name = "dracula" },

  {
    "Lazyvim/Lazyvim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
