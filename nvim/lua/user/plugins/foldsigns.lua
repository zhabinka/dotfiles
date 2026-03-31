-- https://github.com/lewis6991/foldsigns.nvim
return {
  "lewis6991/foldsigns.nvim",
  event = "BufEnter",
  config = function()
    require("foldsigns").setup {
      -- exclude = { 'GitSigns.*' }
    }
  end,
}
