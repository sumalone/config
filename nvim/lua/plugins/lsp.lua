return {
  -- -------------------------------------------------
  --               LSPCONFIG                         |
  -- -------------------------------------------------

  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        pyright = {},
        emmet_language_server = {},
        bashls = {},
        cssls = {},
        tailwindcss = {},
        astro = {},
        zls = {},
        gleam = {},
        vtsls = {},
        ruff_lsp = {},
        gopls = {
          settings = { gopls = { analyses = { fieldalignment = false } } },
        },
      },
      setup = {
        rust_analyzer = function()
          return true
        end,
      },
    },
  },
  -- -------------------------------------------------
  --               DIAGFLOW                          |
  --                                                 |
  --               Better placement for              |
  --               LSP Diagnostic Text               |
  -- -------------------------------------------------

  {
    "dgagn/diagflow.nvim",
    event = "LspAttach",
    opts = {
      format = function(diagnostic)
        return "[LSP] " .. diagnostic.message
      end,
    },
  },
}
