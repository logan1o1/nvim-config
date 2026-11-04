return {
  {
    "folke/tokyonight.nvim",
    -- event = "VeryLazy",
    lazy = true,
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
    "ellisonleao/gruvbox.nvim",
    -- event = "VeryLazy",
    lazy = true,
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        transparent_mode = true,
      })
    end,
  },

  {
    "catppuccin/nvim",
    event = "VeryLazy",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        float = {
          transparent = true,
          solid = false
        }
      })
    end
  },

  {
    "rose-pine/neovim",
    -- event = "VeryLazy",
    lazy = true,
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

  {
    "https://gitlab.com/shmerl/neogotham.git",
    -- event = "VeryLazy",
    lazy = true,
    priority = 1000,
  },
}
