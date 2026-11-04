return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()

      local function custom_theme()
        local theme_name = vim.g.theme
        if theme_name == "tokyonight" then
          local custom_tokyonight = require'lualine.themes.tokyonight'
          custom_tokyonight.normal.c.bg = '#111318'
          return custom_tokyonight
        elseif theme_name == "gruvbox" then
          local custom_gruvbox = require'lualine.themes.gruvbox'
          custom_gruvbox.normal.c.bg = '#13140D'
          return custom_gruvbox
        end
        return "auto"
      end

      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = custom_theme,
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
          disabled_filetypes = {
            statusline = { "snacks_dashboard", "dashboard", "alpha", "starter" },
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          always_show_tabline = true,
          globalstatus = true,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
            refresh_time = 16, -- ~60fps
            events = {
              "WinEnter",
              "BufEnter",
              "BufWritePost",
              "SessionLoadPost",
              "FileChangedShellPost",
              "VimResized",
              "Filetype",
              "CursorMoved",
              "CursorMovedI",
              "ModeChanged",
            },
          },
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = { "filename" },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {},
      })
    end,
  },
}
