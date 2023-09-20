-- https://github.com/lukas-reineke/indent-blankline.nvim
-- :help indent-blankline
return {
  "lukas-reineke/indent-blankline.nvim",
  opts = function(_, config)
    config = {
      show_trailing_blankline_indent = false,
    }
    return config
  end,
}
