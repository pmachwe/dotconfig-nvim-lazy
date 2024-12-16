return {
    "ibhagwan/fzf-lua",
    -- enabled = false,
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
        { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files (root dir)" },
        { "<c-p>", "<cmd>FzfLua files<cr>", desc = "Find Files (root dir)" },
        -- { "<leader><leader>", "<cmd>FzfLua buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
        { "<leader>fb", "<cmd>FzfLua buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
        { "<leader>:", "<cmd>FzfLua command_history<cr>", desc = "Command History" },
        { "<leader>fe", "<cmd>lua require('fzf-lua').files({cwd = vim.fn.expand('%:p:h')})<cr>", desc = "Find Files (cwd)" },
        { "<leader>fr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent" },
        { '<Leader>fc', "<cmd>lua require('fzf-lua').files({cwd = '~/.config/nvim'})<CR>", desc = "Find Files Nvim Config" },
        { "<leader>sl", "<cmd>FzfLua lgrep_curbuf<cr>", desc = "Buffer" },
        { "<leader>sg", "<cmd>FzfLua live_grep<cr>", desc = "Grep (root dir)" },
        { "<leader>/",  "<cmd>lua require('fzf-lua').live_grep({cwd = vim.fn.expand('%:p:h')})<cr>", desc = "Grep (cwd)" },
        { "<leader>sw", "<cmd>FzfLua grep_cword<cr>", desc = "Grep word under cursor" },
        { "<leader>sW", "<cmd>FzfLua grep_cWORD<cr>", desc = "Grep WORD under cursor" },
        { "<leader>fC", "<cmd>FzfLua commands<cr>", desc = "Commands" },
        { "<leader>fh", "<cmd>FzfLua help_tags<cr>", desc = "Help Pages" },
        { "<leader>fM", "<cmd>FzfLua man_pages<cr>", desc = "Man Pages" },
        { "<leader>fm", "<cmd>FzfLua marks<cr>", desc = "Jump to Mark" },
        { "<leader>fo", "<cmd>FzfLua vim_options<cr>", desc = "Options" },
        { "<leader>t", "<cmd>FzfLua btags<cr>", desc = "Search into tags in current buffer" },
        { "<leader>ft", "<cmd>FzfLua tags<cr>", desc = "Search into project tags" },
        { "<c-t>", "<cmd>FzfLua tags<cr>", desc = "Search into project tags" },
    },
}
