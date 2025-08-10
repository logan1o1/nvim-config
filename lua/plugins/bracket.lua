local map = vim.keymap.set
local opts = { noremap = true, silent = true }

--local line = vim.api.nvim_get_current_line()
--local _, col = unpack(vim.api.nvim_win_get_cursor(0))

--local char_before = string.sub(line, col, col)


local brkt_pairs = {
  ['('] = '()<left>',
  ['['] = '[]<left>',
  ['{'] = '{}<left>',
}

local quot_pairs = {
  ['"'] = '""<left>',
  ["'"] = "''<left>",
  ['`'] = '``<left>',
}

--[[local scope_pairs = {
  ['('] = ')',
  ['{'] = '}',
  ['['] = ']',
}]]


for open, sequence in pairs(brkt_pairs) do
  map("i", open, sequence, opts)
end

for open, sequence in pairs(quot_pairs) do
  map("i", open, sequence, opts)
end

vim.keymap.set("i", "<CR>", function()
  local line = vim.api.nvim_get_current_line()
  local _, col = unpack(vim.api.nvim_win_get_cursor(0))
  local char_before = string.sub(line, col, col)

  local feedkey = nil
  if char_before ~= "(" and char_before ~= "{" and char_before ~= "[" then
    feedkey = "<C-j>"
  else
    feedkey = "<C-j><Up><End><C-j>"
  end

  local keys = vim.api.nvim_replace_termcodes(feedkey, true, false, true)
  vim.api.nvim_feedkeys(keys, "i", false)
end, { noremap = true, silent = true })

return {}
