return {
    'tpope/vim-dispatch', -- Async
    'junegunn/vim-peekaboo', -- Registers
    'tpope/vim-scriptease', -- :Message

    {
        'machakann/vim-highlightedyank',
        event = "InsertEnter",
    },

    {
        'christoomey/vim-tmux-navigator',
        lazy = false, 
        keys = {
            {'<A-h>', ':TmuxNavigateLeft<CR>', desc = "Tmux Left"},
            {'<A-j>', ':TmuxNavigateDown<CR>', desc = "Tmux Down"},
            {'<A-k>', ':TmuxNavigateUp<CR>', desc = "Tmux Up"},
            {'<A-l>', ':TmuxNavigateRight<CR>', desc = "Tmux Right"},
            {'<A-\\>', ':TmuxNavigatePrevious<CR>', desc = "Tmux Previous"},
        },
    },

    {
        'ethanholz/nvim-lastplace', config = function()
            require'nvim-lastplace'.setup {
                lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
                lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
                lastplace_open_folds = true
            }
        end
    },

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
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },

    -- Better quickfix
    {
       'kevinhwang91/nvim-bqf',
        ft = 'qf'
    },

    -- Highlight word under curson
    "RRethy/vim-illuminate",

}
