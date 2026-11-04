return {
  {
    "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
    -- lazy = true,
    config = function()
      require("nvim-web-devicons").setup { default = true }
    end,
  },
  {
    "echasnovski/mini.icons",
    event = "VeryLazy",
    -- lazy = true,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      file = {
        [".keep"] = { glyph = "󰊢", hl = "MiniIconsGrey" },
        ["devcontainer.json"] = { glyph = "", hl = "MiniIconsAzure" },
      },
      filetype = {
        dotenv = { glyph = "", hl = "MiniIconsYellow" },
      },
    },
  }
}
