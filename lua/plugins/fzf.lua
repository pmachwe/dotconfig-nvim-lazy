return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = {
        { "junegunn/fzf", build = "./install --bin" },
        { "nvim-tree/nvim-web-devicons" }
    },

    config = function()
        -- calling `setup` is optional for customization
        require("fzf-lua").setup({})
    end,

    keys = {
        { "<leader>,", "<cmd>FzfLua buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
        { "<leader>:", "<cmd>FzfLua command_history<cr>", desc = "Command History" },
        -- find
        { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
        { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files (root dir)" },
        { "<leader>fe", "<cmd>lua require('fzf-lua').files({cwd = vim.fn.expand('%:p:h')})<cr>", desc = "Find Files (cwd)" },
        { "<leader>fr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent" },
        { '<Leader>fi', "<cmd>lua require('fzf-lua').files({cwd = '~/.config/nvim'})<CR>", desc = "Find Files Nvim Config" },
        -- git
        { "<leader>gc", "<cmd>FzfLua git_commits<CR>", desc = "commits" },
        { "<leader>gs", "<cmd>FzfLua git_status<CR>", desc = "status" },
        -- search
        { "<leader>sa", "<cmd>FzfLua autocommands<cr>", desc = "Auto Commands" },
        { "<leader>sb", "<cmd>FzfLua lgrep_curbuf<cr>", desc = "Buffer" },
        { "<leader>sc", "<cmd>FzfLua command_history<cr>", desc = "Command History" },
        { "<leader>sC", "<cmd>FzfLua commands<cr>", desc = "Commands" },
        { "<leader>sd", "<cmd>FzfLua diagnostics<cr>", desc = "Diagnostics" },
        { "<leader>sg", "<cmd>FzfLua live_grep<cr>", desc = "Grep (root dir)" },
        { "<leader>se", "<cmd>lua require('fzf-lua').live_grep({cwd = vim.fn.expand('%:p:h')})<cr>", desc = "Grep (cwd)" },
        { "<leader>/", "<cmd>lua require('fzf-lua').live_grep({cwd = vim.fn.expand('%:p:h')})<cr>", desc = "Grep (cwd)" },
        { "<leader>sw", "<cmd>FzfLua grep_cword<cr>", desc = "Grep word under cursor" },
        { "<leader>sW", "<cmd>FzfLua grep_cWORD<cr>", desc = "Grep WORD under cursor" },
        { "<leader>sv", "<cmd>FzfLua grep_visual<cr>", desc = "Grep visual selection" },
        { "<leader>sh", "<cmd>FzfLua help_tags<cr>", desc = "Help Pages" },
        { "<leader>sH", "<cmd>FzfLua highlights<cr>", desc = "Search Highlight Groups" },
        { "<leader>sk", "<cmd>FzfLua keymaps<cr>", desc = "Key Maps" },
        { "<leader>sM", "<cmd>FzfLua man_pages<cr>", desc = "Man Pages" },
        { "<leader>sm", "<cmd>FzfLua marks<cr>", desc = "Jump to Mark" },
        { "<leader>so", "<cmd>FzfLua vim_options<cr>", desc = "Options" },
        { "<leader>sR", "<cmd>FzfLua resume<cr>", desc = "Resume" },
        { "<leader>r", "<cmd>FzfLua resume<cr>", desc = "Resume" },
        { "<leader>t", "<cmd>FzfLua btags<cr>", desc = "Search into tags in current buffer" },
        { "<leader>st", "<cmd>FzfLua tags<cr>", desc = "Search into project tags" },
    },
}
