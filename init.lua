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

vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>")

vim.keymap.set('n', '<space>d', vim.diagnostic.open_float)

vim.keymap.set("n", "<C-t>", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 15)
end)

vim.keymap.set("n", "<C-c>", ":w<CR>:!gcc % -o %< && ./%< <CR>")

vim.opt.number = true
vim.opt.relativenumber = false

--[[vim.api.nvim_set_option("clipboard", "unnamed")]]
