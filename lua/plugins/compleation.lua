return {
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',

    opts = {
      keymap = {
        preset = 'default',

        -- ["<Tab>"] = { "accept", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
      },

      appearance = {
        nerd_font_variant = 'mono'
      },

      completion = { documentation = { auto_show = false } },

      sources = {
        providers = {
          buffer = {
            opts = {
              -- get all buffers, even ones like neo-tree
              --  get_bufnrs = vim.api.nvim_list_bufs
              -- or (recommended) filter to only "normal" buffers
              get_bufnrs = function()
                return vim.tbl_filter(function(bufnr)
                  return vim.bo[bufnr].buftype == ''
                end, vim.api.nvim_list_bufs())
              end
            }
          },
          path = {
            opts = {
              get_cwd = function(_)
                return vim.fn.getcwd()
              end,
            },
          },
        }
      },

      signature = { enabled = true },

      fuzzy = { implementation = "prefer_rust_with_warning" }
    },
  }
}
