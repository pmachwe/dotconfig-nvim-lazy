return {

    -- Theme
    {
        'EdenEast/nightfox.nvim',
        config = function()
            -- vim.cmd("colorscheme nightfox")
            require('nightfox').setup({
                options = {
                    transparent = true,
                },
            })
        end,
        priority = 10000,
    },

    -- Status line
    {
        "nvim-lualine/lualine.nvim",
        -- enabled = false,
        event = "VeryLazy",
        options = { theme = "auto" },
        config = function()
            require('lualine').setup()
        end,
    },

    -- Better UI
    {
        "folke/noice.nvim",
        enabled = false,
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        },
    },
}
