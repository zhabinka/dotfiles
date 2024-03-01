return {
  -- https://github.com/kylechui/nvim-surround
  "kylechui/nvim-surround",
  version = "*",
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup(
      -- Jump to the nearest surrounding pair for modification

      -- keymaps = {
        -- normal = "ys",
        -- normal_cur = "yss",
        -- normal_line = "yS",
        -- normal_cur_line = "ySS",
        -- visual = "S",
        -- visual_line = "gS",
        -- delete = "ds",
        -- change = "cs",
      -- },
      -- aliases = {
        -- ["a"] = ">",
        -- ["b"] = ")",
        -- ["B"] = "}",
        -- ["r"] = "]",
        -- ["q"] = { '"', "'", "`" },
        -- ["s"] = { "}", "]", ")", ">", '"', "'", "`" },
      -- },
    )
  end,
}
