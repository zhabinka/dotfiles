return {
  -- https://github.com/lewis6991/gitsigns.nvim
  "lewis6991/gitsigns.nvim",
  opts = function(_, config)
    config = {
      -- TODO : fix sign column background hover
      -- signcolumn = false,
      -- numhl = true,
    }
    return config
  end,
}
