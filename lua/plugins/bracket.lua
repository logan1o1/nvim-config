local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local brkt_pairs = {
  ['('] = '()<left>',
  ['['] = '[]<left>',
  ['{'] = '{}<left>',
  ['"'] = '""<left>',
  ["'"] = "''<left>",
  ['`'] = '``<left>',
}


for open, sequence in pairs(brkt_pairs) do
  map("i", open, sequence, opts)
end

return {}
