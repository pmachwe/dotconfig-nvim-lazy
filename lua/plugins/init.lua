return {
    {
        'EdenEast/nightfox.nvim',
        config = function()
            vim.cmd("colorscheme nightfox")
        end,
    },

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },

    {
        'machakann/vim-highlightedyank',
        event = "InsertEnter",
    },

    'tpope/vim-dispatch',

    'junegunn/vim-peekaboo',

    {
        'ngemily/vim-vp4',
        cmd ="Vp4",
    },

    {
        'christoomey/vim-tmux-navigator',
        cmd = {"TmuxNavigateLeft", "TmuxNavigateUp", "TmuxNavigateDown", "TmuxNavigateRight", "TmuxNavigatePrevious"},
    },

    {
        'ethanholz/nvim-lastplace',
        config = function()
            require'nvim-lastplace'.setup {
                lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
                lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
                lastplace_open_folds = true
            }
        end
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

    'tpope/vim-scriptease', -- :Message

    -- use this instead of leap.nvim
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {},
        -- stylua: ignore
        keys = {
            { "s", mode = { "n", "o", "x" }, function() require("flash").jump() end, desc = "Flash" },
            { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
    },

    {
        "folke/flash.nvim",
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {},
        -- stylua: ignore
        keys = {
            { "s", mode = { "n", "o", "x" }, function() require("flash").jump() end, desc = "Flash" },
            { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
    },

}
