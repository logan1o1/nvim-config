-- lua/custom/plugins/mini.lua
return {
  {
    "Mofiqul/dracula.nvim",
    lazy     = false,
    priority = 1000,
    config   = function()
      -- turn on true-color support
      vim.opt.termguicolors = true
      require("dracula").setup({
        colors = {
          bg = "#282A36",
          fg = "#F8F8F2",
          selection = "#44475A",
          comment = "#6272A4",
          red = "#FF5555",
          orange = "#FFB86C",
          yellow = "#F1FA8C",
          green = "#50fa7b",
          purple = "#BD93F9",
          cyan = "#8BE9FD",
          pink = "#FF79C6",
          bright_red = "#FF6E6E",
          bright_green = "#69FF94",
          bright_yellow = "#FFFFA5",
          bright_blue = "#D6ACFF",
          bright_magenta = "#FF92DF",
          bright_cyan = "#A4FFFF",
          bright_white = "#FFFFFF",
          menu = "#21222C",
          visual = "#3E4452",
          gutter_fg = "#4B5263",
          nontext = "#3B4048",
          white = "#ABB2BF",
          black = "#191A21",
        },
      })
      --vim.cmd [[colorscheme dracula]]
    end,
  },

  {
    'echasnovski/mini.nvim',
    config = function()
      local dracula = require("dracula").colors()
      local icons = require 'mini.icons'
      icons.setup {
        style = 'glyph',
      }
      local statusline = require 'mini.statusline'
      statusline.setup {
        use_icons = true,
        content = {
          -- Content for active window
          active = nil,
          -- Content for inactive window(s)
          inactive = nil,
        },
      }

      local hl = vim.api.nvim_set_hl
      hl(0, "MiniStatuslineNormal", { fg = dracula.black, bg = dracula.purple })
      hl(0, "MiniStatuslineModeInsert", { fg = dracula.black, bg = dracula.red })
      hl(0, "MiniStatuslineModeVisual", { fg = dracula.black, bg = dracula.cyan })
      hl(0, "MiniStatuslineModeReplace", { fg = dracula.red, bg = dracula.menu })
      hl(0, "MiniStatuslineModeNormal", { fg = dracula.black, bg = dracula.purple })
      hl(0, "MiniStatuslineModeCommand", { fg = dracula.black, bg = dracula.bright_blue })
    end
  }
}
