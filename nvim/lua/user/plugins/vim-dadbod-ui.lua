return {
  -- https://github.com/kristijanhusak/vim-dadbod-ui
  'kristijanhusak/vim-dadbod-ui',
  event = 'VeryLazy',
  dependencies = {
    { 'tpope/vim-dadbod' },
    -- https://github.com/kristijanhusak/vim-dadbod-completion
    { 'kristijanhusak/vim-dadbod-completion' },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_save_location = "~/sql/"
  end,
}
