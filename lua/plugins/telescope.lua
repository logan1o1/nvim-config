return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            theme = "dropdown",
          }
        },
      }
      vim.keymap.set("n", "<C-h>", require('telescope.builtin').help_tags)
      vim.keymap.set("n", "<C-l>", require('telescope.builtin').find_files)
    end,
  }
}
