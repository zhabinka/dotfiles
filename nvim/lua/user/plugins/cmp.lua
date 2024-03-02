return  {
  "hrsh7th/nvim-cmp",
  opts = function()
    local cmp = require "cmp"

    -- https://github.com/kristijanhusak/neovim-config/blob/0465871032b6319e1e42b25e7c442c912f5cf398/nvim/lua/partials/plugins/completion.lua#L116
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'sql', 'mysql', 'plsql' },
      callback = function()
        cmp.setup.buffer({
          sources = {
            { name = 'vim-dadbod-completion' },
          },
        })
      end,
    })
  end,
}

