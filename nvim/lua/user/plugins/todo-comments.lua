return
{
  -- DOC: https://github.com/folke/todo-comments.nvim
  "folke/todo-comments.nvim",
  event = "User AstroFile",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    keywords = {
      TODO = { icon = " ", color = "#fb4934" },
      HACK = { icon = " "},
      WARN = { icon = " ", color = "#9d0006" },
      PERF = { icon = " ", color = "#8f3f71" },
      TEST = { icon = " ", color = "#d65d0e" },
      NOTE = { icon = " ", alt = { "INFO" } },
      TEMP = { icon = " ", color = "#282828" },
      DOCS = { icon = " ", color = "#a89984"}
    },
  },
}
