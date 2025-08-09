local map = vim.keymap.set
local opts = { noremap = true, silent = true }

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

local scope_pairs = {
  ['('] = ')',
  ['{'] = '}',
  ['['] = ']',
}


for open, sequence in pairs(brkt_pairs) do
  map("i", open, sequence, opts)
end

for open, sequence in pairs(quot_pairs) do
  map("i", open, sequence, opts)
end

for open, close in pairs(scope_pairs) do
  if open == '(' and close == ')' or open == '{' and close == '}' or open == '[' and close == ']' then
    map("i", '<cr>', '<cr><up><end><cr>', opts)
  end
end
--vim.keymap.del("i", '<cr>', opts)

return {}
