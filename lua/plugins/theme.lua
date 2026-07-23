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
    "ellisonleao/gruvbox.nvim",
    lazy = false,
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

  {
    "https://gitlab.com/shmerl/neogotham.git",
    lazy = false,
    priority = 1000,
  },

  -- {
  --   "vimcolorschemes/olive-crt.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     transparent = true,
  --   },
  -- },

  -- {
  --   "ficcdaf/ashen.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('ashen').setup({
  --       transparent = true,
  --     })
  --   end
  -- },
}
