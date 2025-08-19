return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      --'hrsh7th/nvim-cmp',
      --"hrsh7th/cmp-nvim-lsp",
      'saghen/blink.cmp',
      {
        "mason-org/mason.nvim",
        config = true,
        opts = {
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
            }
          }
        }
      },
      { "williamboman/mason-lspconfig.nvim" },
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      local lspconfig = require 'lspconfig'
      --local configs = require('lspconfig/configs')

      require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = { "gopls", "lua_ls", 'vtsls', 'clangd', 'emmet_language_server' },
        automatic_installation = true,
      })

      local capabilities = require('blink.cmp').get_lsp_capabilities()

      lspconfig.clangd.setup { capabilitie = capabilities }
      lspconfig.lua_ls.setup { capabilities = capabilities }
      lspconfig.vtsls.setup { capabilities = capabilities }
      lspconfig.gopls.setup {
        capabilities = capabilities,
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
            gofumpt = true,
          },
          staticcheck = true,
        },
        flags = {
          debounce_text_changes = 150,
        },
        cmd = { "gopls" },
        filetypes = { "go", "gomod", "gotmpl" },
        single_file_support = true,
      }
      lspconfig.emmet_language_server.setup({
        filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact" },
        init_options = {
          includeLanguages = {},
          excludeLanguages = {},
          extensionsPath = {},
          preferences = {},
          showAbbreviationSuggestions = true,
          showExpandedAbbreviation = "always",
          showSuggestionsAsSnippets = false,
          syntaxProfiles = {},
          variables = {},
        },
      })

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('my.lsp', {}),

        callback = function(args)
          local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
          if not client then return end
          if not client:supports_method('textDocument/willSaveWaitUntil')
              and client:supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
              group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
              buffer = args.buf,
              callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
              end,
            })
          end
        end,
      })
    end,
  }
}
