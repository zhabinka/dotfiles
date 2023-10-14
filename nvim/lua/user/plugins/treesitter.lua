return {
  -- https://github.com/nvim-treesitter/nvim-treesitter
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "lua",
      "elixir",
      "eex",
      "heex",
      "erlang",
      "bash",
      "dockerfile",
      "git_config",
      "gitignore",
      "gitattributes",
      "make",
      "markdown",
      "sql",
      "yaml",
      "json",
      "html",
      "python",
      "toml",
      "org", -- https://github.com/milisims/tree-sitter-org
    })
  end,
}
