return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
    keys = {
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
      { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
      { "<leader>ch", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
      { "<leader>cl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
      { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
      { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
      { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
      { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
      { "[B", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
      { "]B", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
    },
    config = function()
      vim.opt.termguicolors = true
      local bufferline = require("bufferline")

      local theme_bg = {
        gruvbox = "#282828",
        tokyonight = "#222436",
        neogotham = "#0c1014",
        dracula = "#282A36",
        ashen = "#121212",
      }

      bufferline.setup({
        options = {
          mode = "buffers",
          max_name_length = 18,
          max_prefix_length = 15,
          truncate_names = true,
          tab_size = 18,
          always_show_bufferline = true,

          diagnostics = "nvim_lsp",
          diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
          end,

          separator_style = "thin",
          indicator = {
            style = "underline",
          },
          hover = {
            enabled = true,
            delay = 200,
            reveal = { "close" },
          },
        },
        highlights = {
          fill = {
            bg = theme_bg[vim.g.theme],
            -- bg = "#222436", -- tokyonight
            -- bg = "#282828", -- gruvbox
            -- bg = "#0c1014", -- neogotham
            -- bg = "#232A36", -- dracula
            -- bg = "#121212", -- ashen
          },
        },
      })
    end,
  },
}
