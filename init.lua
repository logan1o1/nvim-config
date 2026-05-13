vim.opt.expandtab = true
vim.opt.shiftwidth = 8
vim.opt.tabstop = 8
vim.opt.softtabstop = 8

require("config.lazy")
require("config.lsp")
require("config.keymaps")

vim.g.theme = "tokyonight" -- tokyonight, gruvbox, neogotham, dracula, ashen

vim.cmd.colorscheme(vim.g.theme)
