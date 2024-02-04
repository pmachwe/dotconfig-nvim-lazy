return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    keys = {
      { "<leader>no", "<cmd>ObsidianOpen", desc = "Open Obsidian Note [QUERY]" },
      { "<leader>nn", "<cmd>ObsidianNew<cr>", desc = "New Obsidian Note [Title]" },
      { "<leader>nq", "<cmd>ObsidianQuickSwitch<cr>", desc = "Open Obsidian Notes Switcher" },
      { "<leader>nt", "<cmd>ObsidianToday<cr>", desc = "Open Obsidian Note for Today" },
      { "<leader>ny", "<cmd>ObsidianYesterday<cr>", desc = "Open Obsidian Note for Yesterday" },
    },
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
    },
  },

  -- Theme
  "preservim/vim-colors-pencil",

  -- Pencil 
  {
    "preservim/vim-pencil",
    lazy = true,
    ft = "markdown",
  },

  -- Distraction Free
  {
    "folke/zen-mode.nvim",
    keys = {
      { "<leader>z", "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode"}
    },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },

  {
    "folke/twilight.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
}
