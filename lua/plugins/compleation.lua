return {
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',

    opts = {
      keymap = {
        preset = 'default',

        -- ["<Tab>"] = { "accept", "fallback" },
        -- ["<C-k>"] = { "select_prev", "fallback" },
        -- ["<C-j>"] = { "select_next", "fallback"
      },

      appearance = {
        nerd_font_variant = 'mono'
      },

      completion = { documentation = { auto_show = false } },

      signature = { enabled = true },

      fuzzy = { implementation = "prefer_rust_with_warning" }
    },
  }
}
