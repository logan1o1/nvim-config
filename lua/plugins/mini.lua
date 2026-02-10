return {
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      require("dracula").setup({
        colors = {
          bg = "#282A36",
          fg = "#F8F8F2",
          selection = "#44475A",
          comment = "#6272A4",
          tk_blue = "#77aaff",
          light_blue = "#99ccff",
          true_cyan = "#00ffd2",
          red = "#FF5555",
          orange = "#ff9e64",
          yellow = "#F1FA8C",
          green = "#50fa7b",
          purple = "#bf8bff",
          prisma_blue = "#0a0047",
          deep_purple = "#4B006E",
          cyan = "#8BE9FD",
          pink = "#FF79C6",
          bright_red = "#f54e07",
          bright_green = "#69FF94",
          bright_yellow = "#FFFFA5",
          bright_blue = "#D6ACFF",
          bright_magenta = "#FF92DF",
          bright_cyan = "#A4FFFF",
          bright_white = "#FFFFFF",
          menu = "#1b1b26",
          visual = "#3E4452",
          gutter_fg = "#4B5263",
          nontext = "#3B4048",
          white = "#ABB2BF",
          rust_red = "#f26a4b",
          icon_blue = "#7ac9f7",
          go_blue = "#2bc8fc",
        },
      })
    end,
  },
  {
    "echasnovski/mini.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("mini.pairs").setup({})
    end,
  },
}
