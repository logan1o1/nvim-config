return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true

      require("tokyonight").setup({
        transparent = false,
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
        transparent_mode = false,
      })
    end,
  },

  {
    "ficcdaf/ashen.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "water-sucks/darkrose.nvim",
    lazy = false,
    priority = 1000,
  },

  -- {
  --   'uhs-robert/oasis.nvim',
  --   lazy = false,
  --   version = '4.2.0',
  --   config = function()
  --     require('oasis').setup({
  --       style = "lagoon",
  --     })
  --   end,
  -- },

  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
  },

  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha" -- latte, frappe, macchiato, mocha
      })
    end
  },

  {
    "DeviusVim/deviuspro.nvim",
    lazy = false,
  },

  -- {
  --   "Shatur/neovim-ayu",
  --   lazy = false,
  --   config = function()
  --     require('ayu').setup({
  --       dark = true,
  --       terminal = true,
  --     })
  --   end
  -- },

  {
    "rose-pine/neovim",
    lazy = false,
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "main"
      })
    end
  },
}
