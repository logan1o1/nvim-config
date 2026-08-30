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
          layout_config = {
            horizontal = {
              width = 0.95,
              height = 0.95,
              preview_width = 0.6,
            }
          },
          mappings = {
            i = {
              ["<M-k>"] = actions.move_selection_previous,
              ["<M-j>"] = actions.move_selection_next,
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
            find_cmd = "rg",
          },
        },
      })

      vim.keymap.set("n", "ff", builtin.find_files)
      vim.keymap.set("n", "fo", builtin.oldfiles)
      vim.keymap.set("n", "fa", builtin.marks)
      require("plugins.telescope.multigrep").setup()

      vim.keymap.set("n", "fc", builtin.git_commits)
      vim.keymap.set("n", "fb", builtin.git_branches)
      vim.keymap.set("n", "fs", builtin.git_status)
      vim.keymap.set("n", "ft", builtin.git_stash)

      vim.keymap.set("n", "fh", builtin.help_tags)
      vim.keymap.set("n", "fn", builtin.man_pages)
    end,
  },
}
