return {
    -- FZF
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
        dependencies = { "nvim-telescope/telescope.nvim" },
        cmd = "Telescope",
        config = function()
            require('telescope').load_extension('fzf')
        end,
    },

    -- P4 files
    {
        'Badhi/vim-p4-files',
        dependencies = { "nvim-telescope/telescope.nvim" },
        cmd = "Telescope",
        config = function()
            require('telescope').load_extension('vim_p4_files')
        end,
    },

    -- Yanked text
    {
        "AckslD/nvim-neoclip.lua",
        dependencies = { "nvim-telescope/telescope.nvim" },
        cmd = "Telescope",
        config = function()
            require('neoclip').setup()
            require('telescope').load_extension('neoclip')
        end,
    },

    -- Tmux
    {
        'camgraff/telescope-tmux.nvim',
        dependencies = { "nvim-telescope/telescope.nvim" },
        keys = {
            {'<Leader>fTw', "<cmd> Telescope tmux windows<CR>", desc = "Tmux windows"},
            {'<Leader>fTs', "<cmd> Telescope tmux sessions<CR>", desc = "Tmux sessions"},
        },
    },

}
