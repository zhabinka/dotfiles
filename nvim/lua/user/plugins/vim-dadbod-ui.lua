-- NOTE: https://nzinovev.github.io/posts/DBUI-configuration-in-LazyVim/

return {
  -- DOCS: https://github.com/kristijanhusak/vim-dadbod-ui
  'kristijanhusak/vim-dadbod-ui',
  event = 'VeryLazy',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    -- DOC: https://github.com/kristijanhusak/vim-dadbod-completion
    { 'kristijanhusak/vim-dadbod-completion',
      ft = { "sql", "plsql" },
      lazy = true
    }
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  -- TODO: fix shot cuts
  keys = {
    { "<leader>D", "<cmd>DBUI<CR>", desc = "Open DBUI" },
    { "<leader>Dt", "<cmd>DBUIToggle<CR>", desc = "Toggle DBUI" },
    { "<leader>DA", "<cmd>DBUIAddConnection<CR>", desc = "Add DB connection" },
    { "<leader>DF", "<cmd>DBUIFindBuffer<CR>", desc = "Find buffer DBUI" },
  },
  init = function()
    -- Конфигурация DBUI
    -- vim.g.db_ui_save_location = vim.fn.stdpath("data") .. "/db_ui_state.vim"
    vim.g.db_ui_win_position = 'right'
    vim.g.db_ui_winwidth = 50
    vim.g.db_ui_winheight = 15
    vim.g.db_ui_show_help = 0
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_use_nvim_notify = 1
    vim.g.db_ui_save_location = "~/sql/"
    vim.g.db_ui_tmp_query_location = '~/sql/tmp/'
    -- Шаблон для подключений PostgreSQL
    -- Пример: postgres://username:password@host:port/database
    vim.g.db_ui_connection_patterns = {
      ["postgres"] = {
        pattern = "^postgres://(\\w+):(\\w+)@",
        driver = "postgres",
      },
    }
  end,
}
