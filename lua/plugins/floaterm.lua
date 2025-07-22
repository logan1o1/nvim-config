vim.keymap.set("t", "<esc><esc>", "<C-\\><C-n>")

local state = {
  floating = {
    buf = -1,
    win = -1,
  }
}

local function create_floating_window(opts)
  opts         = opts or {}
  -- calculate height/width (default 60%)
  local width  = opts.width or math.floor(vim.o.columns * 0.7)
  local height = opts.height or math.floor(vim.o.lines * 0.7)

  -- center position
  local col    = math.floor((vim.o.columns - width) / 2)
  local row    = math.floor((vim.o.lines - height) / 2)

  -- create a scratch buffer
  local buf    = nil
  if opts.buf and vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true) -- No file, scratch buffer
  end

  -- window options
  local win_opts = {
    relative = 'editor',
    row      = row,
    col      = col,
    width    = width,
    height   = height,
    style    = 'minimal',
    border   = 'rounded',
    -- noautocmd = true,
  }

  -- open the window
  local win = vim.api.nvim_open_win(buf, true, win_opts)

  return { buf = buf, win = win }
end

local toggle_terminal = function()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = create_floating_window { buf = state.floating.buf }
    if vim.bo[state.floating.buf].buftype ~= "terminal" then
      vim.cmd.terminal()
    end
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
end

vim.api.nvim_create_user_command("Floterm", toggle_terminal, {})
vim.keymap.set({ "n", "t" }, "<C-e>", toggle_terminal)
return {}
