require("vim._core.ui2").enable({})
require("config.lazy")
require("config.lsp")
require("config.options")
require("config.keymaps")
require("config.autocmds")

vim.g.theme = "gruvbox"
-- olive-crt, rose-pine, tokyonight, gruvbox, neogotham, ashen, catppuccin

vim.cmd.colorscheme(vim.g.theme)
