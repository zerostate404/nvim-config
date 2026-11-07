return {
  "folke/tokyonight.nvim",
  lazy = false,      -- load at startup, the colors are needed immediately
  priority = 1000,   -- load before other plugins

  opts = {
      transparent = true,

      styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
  },
  config = function(_, opts)
      require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight-night")
  end,
}
