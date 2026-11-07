return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,          -- this plugin must not be lazy-loaded
  build = ":TSUpdate",
  config = function()
    -- Install parsers (async, skips ones you already have)
    require("nvim-treesitter").install({
      "python", "cpp", "c", "cmake", "bash",
      "lua", "vim", "vimdoc", "query",
      "markdown", "markdown_inline",
      "json", "yaml", "toml", "dockerfile",
    })

    -- Turn on highlighting for any filetype that has a parser
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("ts_highlight", { clear = true }),
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)  -- silently skip if no parser
      end,
    })
  end,
}
