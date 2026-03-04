return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "gopls",
        "ruby_lsp",
        "clangd",
        "rubocop",
        "ts_ls",
        "cssls",
        "dockerls",
        "html",
        "postgres_lsp",
        "markdown_oxide",
        "bashls",
        "vimls",
        "tailwindcss",
        "eslint",
        "emmet_ls",
        "prismals",
        "qmlls",
      },
    },
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗",
            },
          },
        },
      },
      "neovim/nvim-lspconfig",
    },
  },
}
