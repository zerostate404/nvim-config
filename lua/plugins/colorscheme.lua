return {
  "folke/tokyonight.nvim",
  lazy = false,      -- load at startup, the colors are needed immediately
  priority = 1000,   -- load before other plugins

  opts = {
      style = "moon",
      transparent = true,

      styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
  },
  config = function()
    vim.cmd.colorscheme("tokyonight-night")
  end,
}
