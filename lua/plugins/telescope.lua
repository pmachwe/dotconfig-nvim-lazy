return {
    'nvim-telescope/telescope.nvim', 
    -- enabled = false,
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
    end,
    cmd = "Telescope",
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files (root dir)" },
        { "<c-p>", "<cmd>Telescope find_files<cr>", desc = "Find Files (root dir)" },
        -- { "<leader>,", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
        { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
        -- find
        { "<leader>fe", "<cmd>lua require('telescope.builtin').find_files({cwd = vim.fn.expand('%:p:h')})<cr>", desc = "Find Files (cwd)" },
        { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
        { '<Leader>fc', "<cmd>lua require('telescope.builtin').find_files({cwd = '~/.config/nvim'})<CR>", desc = "Find Files Nvim Config" },
        -- search
        { "<leader>sl", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
        { "<leader>fC", "<cmd>Telescope commands<cr>", desc = "Commands" },
        { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Grep (root dir)" },
        { "<leader>/",  "<cmd>lua require('telescope.builtin').live_grep({cwd = vim.fn.expand('%:p:h')})<cr>", desc = "Grep (cwd)" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
        { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
        { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
        { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
        { "<leader>fo", "<cmd>Telescope vim_options<cr>", desc = "Options" },
        { "<leader>r", "<cmd>Telescope resume<cr>", desc = "Resume" },
        { "<leader>t",  "<cmd>lua require('telescope.builtin').current_buffer_tags()<cr>", desc = "Tags (buffer)" },
        { "<leader>ft", "<cmd>lua require('telescope.builtin').tags()<cr>", desc = "Tags" },
        { "<leader>fy", "<cmd>Telescope neoclip<cr>", desc = "Neoclip" },
        -- { "<leader>sw", Util.telescope("grep_string"), desc = "Word (root dir)" },
        -- { "<leader>sW", Util.telescope("grep_string", { cwd = false }), desc = "Word (cwd)" },
        -- { "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
        -- { "<leader>t", "<cmd>Telescope treesitter<cr>", desc = "Treesitter symbols" },
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
