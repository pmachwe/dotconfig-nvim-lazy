return {
    -- lspconfig
    {
        "neovim/nvim-lspconfig",
        -- enabled = false,
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            require'lspconfig'.rust_analyzer.setup{ 
                on_attach = function()
                    print("hello")
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
                    vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer=0})
                    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
                    vim.keymap.set("n", " dn", vim.diagnostic.goto_next, {buffer=0})
                    vim.keymap.set("n", " dp", vim.diagnostic.goto_prev, {buffer=0})
                end
            }
        end,
    },
}
