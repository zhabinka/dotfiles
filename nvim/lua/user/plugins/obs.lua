return {
    -- https://github.com/IlyasYOY/obs.nvim
    "IlyasYOY/obs.nvim",
    event = "VeryLazy",
    dependencies = {
        "IlyasYOY/coredor.nvim",
        -- "nvim-lua/plenary.nvim",
        -- "nvim-telescope/telescope.nvim",
    },
    -- dev = true,
    config = function()
        local obs = require "obs"

        obs.setup {
            vault_home = "~/notes",
            vault_name = "notes",
            journal = {
                template_name = "note",
                daily_template_name = "daily",
                weekly_template_name = "weekly",
                -- home = "",
                -- date_glob = "",
                -- week_glob =""
            },
        }

        -- config for completion source (cmp)
        local group = vim.api.nvim_create_augroup(
            "ObsNvim",
            { clear = true }
        )

        vim.api.nvim_create_autocmd({ "BufEnter" }, {
            group = group,
            pattern = "*.md",
            desc = "Setup notes nvim-cmp source",
            callback = function()
                if obs.vault:is_current_buffer_in_vault() then
                    require("cmp").setup.buffer {
                        sources = {
                            { name = "obs" },
                            { name = "luasnip" },
                        },
                    }
                end
            end,
        })

        vim.keymap.set("n", "<leader>nn", "<cmd>ObsNvimFollowLink<cr>")
        vim.keymap.set("n", "<leader>nr", "<cmd>ObsNvimRandomNote<cr>")
        vim.keymap.set("n", "<leader>nN", "<cmd>ObsNvimNewNote<cr>")
        vim.keymap.set("n", "<leader>ny", "<cmd>ObsNvimCopyObsidianLinkToNote<cr>")
        vim.keymap.set("n", "<leader>no", "<cmd>ObsNvimOpenInObsidian<cr>")
        vim.keymap.set("n", "<leader>nd", "<cmd>ObsNvimDailyNote<cr>")
        vim.keymap.set("n", "<leader>nw", "<cmd>ObsNvimWeeklyNote<cr>")
        vim.keymap.set("n", "<leader>nrn", "<cmd>ObsNvimRename<cr>")
        vim.keymap.set("n", "<leader>nT", "<cmd>ObsNvimTemplate<cr>")
        vim.keymap.set("n", "<leader>nM", "<cmd>ObsNvimMove<cr>")
        vim.keymap.set("n", "<leader>nb", "<cmd>ObsNvimBacklinks<cr>")
        vim.keymap.set("n", "<leader>nfj", "<cmd>ObsNvimFindInJournal<cr>")
        vim.keymap.set("n", "<leader>nff", "<cmd>ObsNvimFindNote<cr>")
        vim.keymap.set("n", "<leader>nfw", "<cmd>ObsNvimFindInNotes<cr>")
    end,
}
