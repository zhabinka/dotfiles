return {
  -- https://github.com/nvim-neo-tree/neo-tree.nvim
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        never_show = {
          '.DS_Store'
        }
      }
    }
  },
}
