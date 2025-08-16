vim.opt.expandtab   = true
vim.opt.shiftwidth  = 2
vim.opt.tabstop     = 2
vim.opt.softtabstop = 2

require("config.lazy")

require 'cmp'.setup {
  sources = {
    { name = 'nvim_lsp_signature_help' }
  },
}

vim.lsp.set_log_level("off")

vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<Leader><Leader>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<Leader>x", ":.lua<CR>")
vim.keymap.set("v", "<Leader>x", ":lua<CR>")

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>")

vim.keymap.set('n', '<Leader>d', vim.diagnostic.open_float)

vim.keymap.set("n", "<C-t>", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 15)
end)

vim.keymap.set("n", "<C-c>", ":w<CR>:!gcc % -o %< && ./%< <CR>")

vim.opt.number = true
vim.opt.relativenumber = false

local map = vim.api.nvim_set_keymap

map("n", "<S-H>", "<Plug>(cokeline-focus-prev)", { silent = true })
map("n", "<S-L>", "<Plug>(cokeline-focus-next)", { silent = true })
map("n", "<Leader>p", "<Plug>(cokeline-switch-prev)", { silent = true })
map("n", "<Leader>n", "<Plug>(cokeline-switch-next)", { silent = true })

vim.keymap.set("n", "<S-Q>", function()
  require('cokeline.mappings').pick("close")
end, { desc = "Pick a buffer to close" })
