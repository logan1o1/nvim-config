require("vim._core.ui2").enable({})
require("config.lazy")
require("config.lsp")
require("config.options")
require("config.keymaps")
require("config.autocmds")

vim.g.theme = "rose-pine"
--  catppuccin, rose-pine, tokyonight, gruvbox, neogotham, ashen, olive-crt

vim.cmd.colorscheme(vim.g.theme)
