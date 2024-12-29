return {
  -- -------------------------------------------------
  --               VIM-TMUX-NAVIGATOR                |
  -- -------------------------------------------------
  {
    "alexghergh/nvim-tmux-navigation",
    opts = {
      disable_when_zoomed = true,
    },
    keys = {
      { "<C-h>", "<cmd>NvimTmuxNavigateLeft<cr>", desc = "Navigate Left (tmux aware)" },
      { "<C-l>", "<cmd>NvimTmuxNavigateRight<cr>", desc = "Navigate Right (tmux aware)" },
      { "<C-j>", "<cmd>NvimTmuxNavigateDown<cr>", desc = "Navigate Down (tmux aware)" },
      { "<C-k>", "<cmd>NvimTmuxNavigateUp<cr>", desc = "Navigate Up (tmux aware)" },
    },
  },
  -- -------------------------------------------------
  --               TABOUT                            |
  -- -------------------------------------------------
  {
    "abecodes/tabout.nvim",
    lazy = true,
    event = "InsertEnter",
    opts = {
      tabouts = {
        { open = "'", close = "'" },
        { open = '"', close = '"' },
        { open = "`", close = "`" },
        { open = "(", close = ")" },
        { open = "[", close = "]" },
        { open = "{", close = "}" },
        { open = "<", close = ">" },
      },
      exclude = {}, -- tabout will ignore these filetypes
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },
  -- -------------------------------------------------
  --             NVIM SURROUND                       |
  -- -------------------------------------------------
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },
}
