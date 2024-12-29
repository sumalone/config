return {
  {
    "echasnovski/mini.files",
    opts = {
      options = { use_as_default_explorer = true },
      windows = { preview = false },
    },
    keys = function()
      return {
        {
          "<leader>e",
          function()
            require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
          end,
          desc = "Open mini.files (Directory of Current File)",
        },
        {
          "<leader>E",
          function()
            require("mini.files").open(vim.uv.cwd(), true)
          end,
          desc = "Open mini.files (cwd)",
        },
      }
    end,
  },

  -- Statusline
  {
    "echasnovski/mini.statusline",
    version = false,
    opts = {
      use_icons = true,
    },
  },
}
