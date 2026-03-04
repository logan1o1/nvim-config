return {
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      default_file_explorer = true,
      columns = {
        "icon",
        -- "permissions",
        -- "size",
        -- "mtime",
      },
      buf_options = {
        buflisted = false,
        bufhidden = "hide",
      },
      -- Window-local options to use for oil buffers
      win_options = {
        wrap = false,
        signcolumn = "no",
        cursorcolumn = false,
        foldcolumn = "0",
        spell = false,
        list = false,
        conceallevel = 3,
        concealcursor = "nvic",
      },
      delete_to_trash = true,
      skip_confirm_for_simple_edits = false,
      prompt_save_on_select_new_entry = true,
      cleanup_delay_ms = 2000,
      lsp_file_methods = {
        enabled = true,
        timeout_ms = 1000,
        autosave_changes = false,
      },
      constrain_cursor = "editable",
      watch_for_changes = false,
      keymaps = {
        ["g?"] = { "actions.show_help", mode = "n" },
        ["<C-j>"] = "actions.select",
        ["<C-s>"] = { "actions.select", opts = { vertical = true } },
        ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
        ["<C-t>"] = { "actions.select", opts = { tab = true } },
        ["<C-p>"] = "actions.preview",
        ["<C-w>"] = { "actions.close", mode = "n" },
        ["<C-l>"] = "actions.refresh",
        ["<C-b>"] = { "actions.parent", mode = "n" },
        -- ["<S-L>"] = "actions.toggle_subdirectories.select",
        ["_"] = { "actions.open_cwd", mode = "n" },
        ["`"] = { "actions.cd", mode = "n" },
        ["-"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
        ["gs"] = { "actions.change_sort", mode = "n" },
        ["gx"] = "actions.open_external",
        ["g."] = { "actions.toggle_hidden", mode = "n" },
        ["tr"] = { "actions.toggle_trash", mode = "n" },
      },
      use_default_keymaps = true,
      view_options = {
        show_hidden = true,
        -- This function defines what is considered a "hidden" file
        is_hidden_file = function(name, bufnr)
          local m = name:match("^%.")
          return m ~= nil
        end,
        -- This function defines what will never be shown, even when `show_hidden` is set
        is_always_hidden = function(name, bufnr)
          return false
        end,
        -- Can be "fast", true, or false. "fast" will turn it off for large directories.
        natural_order = "fast",
        -- Sort file and directory names case insensitive
        case_insensitive = false,
        sort = {
          { "type", "asc" },
          { "name", "asc" },
        },
        -- Customize the highlight group for the file name
        highlight_filename = function(entry, is_hidden, is_link_target, is_link_orphan)
          return nil
        end,
      },
      -- Extra arguments to pass to SCP when moving/copying files over SSH
      extra_scp_args = {},
      -- EXPERIMENTAL support for performing file operations with git
      git = {
        -- Return true to automatically git add/mv/rm files
        add = function(path)
          return false
        end,
        mv = function(src_path, dest_path)
          return false
        end,
        rm = function(path)
          return false
        end,
      },

      float = {
        -- Padding around the floating window
        padding = 2,
        -- max_width and max_height can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
        max_width = 30,
        max_height = 60,
        border = "rounded",
        win_options = {
          winblend = 0,
        },
        get_win_title = nil,
        preview_split = "right",
        override = function(conf)
          conf.anchor = "NE"
          conf.row = 1
          conf.col = vim.o.columns
          conf.height = vim.o.lines - 2
          return conf
        end,
      },
      -- Configuration for the file preview window
      preview_win = {
        update_on_cursor_moved = true,
        preview_method = "fast_scratch",
        disable_preview = function(filename)
          return true
        end,
        win_options = {},
      },
      -- Configuration for the floating action confirmation window
      confirmation = {
        max_width = 0.9,
        min_width = { 40, 0.4 },
        width = nil,
        max_height = 0.9,
        min_height = { 5, 0.1 },
        height = nil,
        border = "rounded",
        win_options = {
          winblend = 0,
        },
      },
      -- Configuration for the floating progress window
      progress = {
        max_width = 0.9,
        min_width = { 40, 0.4 },
        width = nil,
        max_height = { 10, 0.9 },
        min_height = { 5, 0.1 },
        height = nil,
        border = "rounded",
        minimized_border = "none",
        win_options = {
          winblend = 0,
        },
      },
      ssh = {
        border = "rounded",
      },
      keymaps_help = {
        border = "rounded",
      },
    },
    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    lazy = false,
  },
}
