return {

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },

    -- context-aware commenting
    {
        'numToStr/Comment.nvim',
        event = "InsertEnter",
        config = function()
            require('Comment').setup()
        end
    },

    {
        'nmac427/guess-indent.nvim',
        event = "InsertEnter",
        config = function() require('guess-indent').setup {} end,
    },

    {
        "NeogitOrg/neogit",
        cmd = "Neogit",
        keys = {
            {"<f6>", "<cmd>Neogit", desc = "Open Neogit interface for Git operations" },
        },
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "nvim-telescope/telescope.nvim", -- optional
            "sindrets/diffview.nvim",        -- optional
            "ibhagwan/fzf-lua",              -- optional
        },
        config = true
    },
}
