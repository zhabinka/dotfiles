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
    vim.g.db_ui_win_position = 'right'
    vim.g.db_ui_show_help = 0
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_use_nvim_notify = 1
    vim.g.db_ui_save_location = "~/sql/"
    vim.g.db_ui_tmp_query_location = '~/sql/tmp/'
  end,
}
