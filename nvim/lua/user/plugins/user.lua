return {
  -- Add plugins, the lazy syntax
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    config = function()
      require("gruvbox").setup({})
    end,
  },
}
