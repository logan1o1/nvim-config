return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre", "FocusLost", "InsertLeave" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        go = { "gopls" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    },
    config = function(_, opts)
      local conform = require("conform")

      conform.setup(opts)

      vim.api.nvim_create_autocmd({ "FocusLost", "InsertLeave" }, {
        pattern = "*",
        callback = function(args)
          local valid, buftype = pcall(vim.api.nvim_get_option_value, "buftype", { buf = args.buf })

          if not valid or buftype ~= "" then
            return
          end

          conform.format({
            bufnr = args.buff,
            async = true,
            lsp_fallback = true,
          })
        end,
      })
    end,
  },
}
