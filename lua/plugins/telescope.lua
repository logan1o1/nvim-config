return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-media-files.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("telescope").load_extension("media_files")
      local actions = require("telescope.actions")
      local builtin = require("telescope.builtin")

      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<M-k>"] = actions.results_scrolling_up,
              ["<M-j>"] = actions.results_scrolling_down,
              ["<M-u>"] = actions.preview_scrolling_up,
              ["<M-n>"] = actions.preview_scrolling_down,
            },
          },
        },
        pickers = {
          find_files = {
            theme = "dropdown", -- cursor, ivy, dropdown
          },
        },
        extensions = {
          fzf = {},
          media_files = {
            -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
            filetypes = { "png", "webp", "jpg", "jpeg" },
            -- find command (defaults to `fd`)
            find_cmd = "rg",
          },
        },
      })
      vim.keymap.set("n", "fh", builtin.help_tags)
      vim.keymap.set("n", "fl", builtin.live_grep)
      vim.keymap.set("n", "fg", builtin.grep_string)
      vim.keymap.set("n", "ff", builtin.find_files)
      vim.keymap.set("n", "fp", function()
        require("telescope.builtin").find_files({
          cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy"),
        })
      end)
      require("plugins.telescope.multigrep").setup()
    end,
  },
}
