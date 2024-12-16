return {
    'nvim-telescope/telescope.nvim', 
    enabled = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function() 
        require("telescope").setup {
            pickers = {
                find_files = {
                    theme = "ivy",
                },
            },
            extensions = {
                fzf = {
                    fuzzy = true, -- false will only do exact matching
                    override_generic_sorter = true, -- override the generic sorter
                    override_file_sorter = true, -- override the file sorter
                    case_mode = "smart_case", -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                }
            },
        }
        require("telescope").load_extension("fzf")
    end,
    cmd = "Telescope",
    keys = {
        { "<leader>,", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
        { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
        -- find
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files (root dir)" },
        { ";", "<cmd>Telescope find_files<cr>", desc = "Find Files (root dir)" },
        { "<leader>fe", "<cmd>lua require('telescope.builtin').find_files({cwd = vim.fn.expand('%:p:h')})<cr>", desc = "Find Files (cwd)" },
        { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
        { '<Leader>fi', "<cmd>lua require('telescope.builtin').find_files({cwd = '~/.config/nvim'})<CR>", desc = "Find Files Nvim Config" },
        -- git
        { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "commits" },
        { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "status" },
        -- search
        { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
        { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
        { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
        { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
        { "<leader>sd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
        { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Grep (root dir)" },
        { "<leader>se", "<cmd>lua require('telescope.builtin').live_grep({cwd = vim.fn.expand('%:p:h')})<cr>", desc = "Grep (cwd)" },
        { "<leader>/", "<cmd>lua require('telescope.builtin').live_grep({cwd = vim.fn.expand('%:p:h')})<cr>", desc = "Grep (cwd)" },
        { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
        { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
        { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
        { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
        { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
        { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
        { "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
        { "<leader>r", "<cmd>Telescope resume<cr>", desc = "Resume" },
        { "<leader>t", "<cmd>Telescope treesitter<cr>", desc = "Treesitter symbols" },
        -- { "<leader>sw", Util.telescope("grep_string"), desc = "Word (root dir)" },
        -- { "<leader>sW", Util.telescope("grep_string", { cwd = false }), desc = "Word (cwd)" },
        -- { "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
        -- {
        --     "<leader>ss",
        --     Util.telescope("lsp_document_symbols", {
        --         symbols = {
        --             "Class",
        --             "Function",
        --             "Method",
        --             "Constructor",
        --             "Interface",
        --             "Module",
        --             "Struct",
        --             "Trait",
        --             "Field",
        --             "Property",
        --         },
        --     }),
        --     desc = "Goto Symbol",
        -- },
        -- {
        --     "<leader>sS",
        --     Util.telescope("lsp_workspace_symbols", {
        --         symbols = {
        --             "Class",
        --             "Function",
        --             "Method",
        --             "Constructor",
        --             "Interface",
        --             "Module",
        --             "Struct",
        --             "Trait",
        --             "Field",
        --             "Property",
        --         },
        --     }),
        --     desc = "Goto Symbol (Workspace)",
        -- },
    },
}
