-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  i = {
    -- Выход из режима вставки
    ["<c-х>"] = { "<C-[>", desc = "" },

    ["<C-г>"] = { "<C-G>u<C-U>", desc = "" },
    ["<C-ц>"] = { "<C-G>u<C-W>", desc = "" },

    ["<C-s>"] = { "<cmd>w<cr><esc>", desc = "Save File" },
    ["<C-ы>"] = { "<cmd>w<cr><esc>", desc = "Save File" },

    ["<C-d>"] = { "<DEL>", desc = "Delete character right of the cursor" },
  },
  x = {
    -- Change text without putting it into the vim register,
    -- see https://stackoverflow.com/q/54255/6064933
    ["c"] = { "\"_c", desc = ""},
  },
  n = {
    ["c"] = { "\"_c", desc = ""},
    ["C"] = { "\"_C", desc = ""},
    ["cc"] = { "\"_cc", desc = ""},

    -- for russian layout
    ["л"] = { "gk", desc = "" },
    ["о"] = { "gj", desc = "" },

    ["<leader>ц"] = { "<cmd>w<cr>", desc = "Save File" },

    -- Go to start or end of line easier
    ["<C-[>"] = { "^", desc = "Go to start line"},
    ["<C-]>"] = { "g_", desc = "Go to end line"},
    ["<C-a>"] = { "<HOME>", desc = "Go to start line"},
    ["<C-e>"] = { "<END>", desc = "Go to end line"},

    -- Move line
    ["<A-j>"] = { "<cmd>m .+1<cr>==", desc = "Move line down" },
    ["<A-k>"] = { "<cmd>m .-2<cr>==", desc = "Move line up" },
    -- map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
    -- map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
    -- map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
    -- map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
