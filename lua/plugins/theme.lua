return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true

      require("tokyonight").setup({
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      })
    end,
  },

  {
    "https://gitlab.com/shmerl/neogotham.git",
    lazy = false,
    priority = 1000,
  },

  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        transparent_mode = true,
      })
    end,
  },

  {
    "ficcdaf/ashen.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('ashen').setup({
        transparent = true,
      })
    end
  },

  {
    "water-sucks/darkrose.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('nordic').setup({
        transparent = {
          bg = true,
          float = true,
        },
      })
    end
  },

  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        flavour = "mocha" -- latte, frappe, macchiato, mocha
      })
    end
  },

  {
    "DeviusVim/deviuspro.nvim",
    lazy = false,
  },

  {
    "rose-pine/neovim",
    lazy = false,
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        styles = {
          italic = true,
          transparency = true,
        },
        variant = "main"
      })
    end
  },
}
