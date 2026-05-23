require("vim._core.ui2").enable({})
require("config.lazy")
require("config.lsp")
require("config.options")
require("config.keymaps")

vim.g.theme = "tokyonight" -- tokyonight, gruvbox, neogotham, dracula, ashen

vim.cmd.colorscheme(vim.g.theme)
