return {
  {
    "echasnovski/mini.nvim",
    lazy = true,
    event = "VeryLazy",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("mini.pairs").setup({})
    end,
  },
}
