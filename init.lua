vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

require("config.lazy")
require("config.lsp")
require("config.keymaps")

vim.g.theme = "neogotham" -- tokyonight, gruvbox, neogotham, dracula, ashen

vim.cmd.colorscheme(vim.g.theme)
