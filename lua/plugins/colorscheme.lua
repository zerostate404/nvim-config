return {
  "folke/tokyonight.nvim",
  lazy = false,      -- load at startup, the colors are needed immediately
  priority = 1000,   -- load before other plugins
  config = function()
    vim.cmd.colorscheme("tokyonight-night")
  end,
}
