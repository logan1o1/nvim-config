require("vim._core.ui2").enable({})
require("config.lazy")
require("config.lsp")
require("config.options")
require("config.keymaps")
require("config.autocmds")

vim.g.theme = "gruvbox"
-- ayu, rose-pine, tokyonight, gruvbox, neogotham, ashen, darkrose, miasma, catppuccin, nordic, oasis, deviuspro

vim.cmd.colorscheme(vim.g.theme)
