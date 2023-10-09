-- https://github.com/folke/todo-comments.nvim
return
{
  "folke/todo-comments.nvim",
  event = "User AstroFile",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    keywords = {
      TODO = { icon = " " },
      HACK = { icon = " "},
      WARN = { icon = " ", color = "#cc241d" },
      PERF = { icon = " ", color = "#8f3f71" },
      TEST = { icon = " ", color = "#d65d0e" },
      NOTE = { icon = " ", alt = { "INFO" } },
      TEMP = { icon = " ", color = "#7c6f64" },
    },
  },
}
