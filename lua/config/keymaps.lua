vim.keymap.set("i", "<C-j>", "<CR>")

vim.lsp.set_log_level("off")

vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<Leader><Leader>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<Leader>x", ":.lua<CR>")
vim.keymap.set("v", "<Leader>x", ":lua<CR>")

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>")

vim.keymap.set("n", "<C-o>", ":Oil --float<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float)

vim.keymap.set("n", "<C-t>", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 15)
end)

vim.keymap.set("n", "<C-c>", ":w<CR>:!gcc % -o %< && ./%< <CR>")

vim.opt.number = true
vim.opt.relativenumber = false
