require("vim._core.ui2").enable({})
require("config.lazy")
require("config.lsp")
require("config.options")
require("config.keymaps")

vim.g.theme = "catppuccin"
-- ayu, tokyonight, gruvbox, neogotham, ashen, darkrose, miasma, catppuccin, nordic, oasis, deviuspro

vim.cmd.colorscheme(vim.g.theme)
