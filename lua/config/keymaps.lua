vim.keymap.set("i", "<C-j>", "<CR>")

vim.keymap.set("n", "<Leader><Leader>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<Leader>x", ":.lua<CR>")
vim.keymap.set("v", "<Leader>x", ":lua<CR>")

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>")

vim.keymap.set("n", "<Leader>l", ":Oil --float<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>r", ":bd!<CR>")

vim.keymap.set("n", "<S-Y>", vim.diagnostic.open_float)

vim.keymap.set("n", "<Leader>e", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 16)
end)
