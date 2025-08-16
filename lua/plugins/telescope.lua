return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-media-files.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      require('telescope').load_extension('media_files')
      require('telescope').setup {
        pickers = {
          find_files = {
            theme = "dropdown",
          }
        },
        extensions = {
          fzf = {},
          media_files = {
            -- filetypes whitelist
            -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
            filetypes = { "png", "webp", "jpg", "jpeg" },
            -- find command (defaults to `fd`)
            find_cmd = "rg"
          },
        }
      }
      vim.keymap.set("n", "<C-h>", require('telescope.builtin').help_tags)
      vim.keymap.set("n", "<C-l>", require('telescope.builtin').find_files)
      vim.keymap.set("n", "<C-p>", function()
        require('telescope.builtin').find_files {
          cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
        }
      end)
      require "plugins.telescope.multigrep".setup()
    end,
  }
}
