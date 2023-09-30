-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  i = {
    ["<c-х>"] = { "<C-[>", desc = "Exit from insert mode" },

    ["<C-г>"] = { "<C-G>u<C-U>", desc = "" },
    ["<C-ц>"] = { "<C-G>u<C-W>", desc = "" },

    ["<C-s>"] = { "<cmd>w<cr><esc>", desc = "Save File" },
    ["<C-ы>"] = { "<cmd>w<cr><esc>", desc = "Save File" },

    ["<C-d>"] = { "<DEL>", desc = "Delete character right of the cursor" },

    ["<C-Enter>"] = { "<esc>o", desc = "Add blank line above pointer and go to it" },
    ["<S-Enter>"] = { "<esc>O", desc = "Add blank line below pointer and go to it" },
    ["<C-j>"] = { "<C-[>gji", desc = "Move to next line" },
    ["<C-k>"] = { "<C-[>gki", desc = "Move to prev line" },
    ["<C-l>"] = { "<C-[>la", desc = "Move to next char" },
    ["<C-h>"] = { "<C-[>i", desc = "Move to prev char" },
    ["<C-a>"] = { "<C-[>A", desc = "Move to end of line" },
    ["<C-i>"] = { "<C-[>I", desc = "Move to start of line" },
  },
  x = {
    -- Change text without putting it into the vim register,
    -- see https://stackoverflow.com/q/54255/6064933
    ["c"] = { "\"_c", desc = "" },

    ["<C-[>"] = { "^", desc = "Select from cursor to start of line" },
    ["<C-]>"] = { "g_", desc = "Select from cursor to end of line" },
  },
  n = {
    ["c"] = { "\"_c", desc = "" },
    ["C"] = { "\"_C", desc = "" },
    ["cc"] = { "\"_cc", desc = "" },

    -- for russian layout
    ["л"] = { "gk", desc = "" },
    ["о"] = { "gj", desc = "" },

    ["<leader>ц"] = { "<cmd>w<cr>", desc = "Save File" },

    -- Go to start or end of line easier
    ["<C-[>"] = { "^", desc = "Go to start line" },
    ["<C-]>"] = { "g_", desc = "Go to end line" },
    ["<C-a>"] = { "<HOME>", desc = "Go to start line" },
    ["<C-e>"] = { "<END>", desc = "Go to end line" },

    -- Move line
    ["<A-j>"] = { "<cmd>m .+1<cr>==", desc = "Move line down" },
    ["<A-k>"] = { "<cmd>m .-2<cr>==", desc = "Move line up" },
    -- map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
    -- map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
    -- map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
    -- map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

    ["<Enter>"] = { ":call append(line('.'), '')<CR>", desc = "Add blank line above the cursor" },
    ["<C-Enter>"] = { ":call append(line('.'), '')<CR>", desc = "Add blank line above the cursor" },
    ["<S-Enter>"] = { ":call append(line('.')-1, '')<CR>", desc = "Add blank line below cursor" },

    ["<space>i"] = { "i<space><esc>", desc = "Add space before pointer" },
    ["<space>a"] = { "a<space><esc>", desc = "Add space after pointer" },
    ["_i"] = { "i_<esc>", desc = "Add underscore before pointer" },
    ["_a"] = { "a_<esc>", desc = "Add underscore after pointer" },

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<s-Tab>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<Tab>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },

    -- Use todo-comments plugin
    ["]t"] = { function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
    ["[t"] = { function() require("todo-comments").jump_prev() end, desc = "Previous todo comment" },
    ["<leader>fT"] = { "<cmd>:TodoTelescope<cr>", desc = "Show todo comments with Telescope" },

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
