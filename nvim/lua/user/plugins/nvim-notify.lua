-- https://github.com/kristijanhusak/neovim-config/blob/master/nvim/lua/partials/plugins/notify.lua
local notify = {
  'rcarriga/nvim-notify',
  event = 'VeryLazy',
}
notify.config = function()
  local n = require('notify')
  n.setup({
    top_down = false,
    render = 'minimal',
  })
  vim.notify = n
  return notify
end

return notify
