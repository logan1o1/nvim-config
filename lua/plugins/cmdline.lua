local state = {
  floating = {
    buf = -1,
    win = -1,
  }
}

local function create_floating_window(opts)
  opts         = opts or {}

  local width  = opts.width or math.floor(vim.o.columns * 0.8)
  local height = opts.hight or math.floor(vim.o.lines * 0.03)

  local col    = math.floor((vim.o.columns - width) / 2)
  local row    = math.floor((vim.o.lines - height) / 5)

  local buf    = nil
  if opts.buf and vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(true, false)
  end

  local win_opts = {
    relative  = 'editor',
    row       = row,
    col       = col,
    width     = width,
    height    = height,
    style     = 'minimal',
    border    = 'rounded',
    title     = " CMD Line ",
    title_pos = "center",
  }

  local win = vim.api.nvim_open_win(buf, true, win_opts)

  return { buf = buf, win = win }
end

local toggle_cmd = function()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = create_floating_window { buf = state.floating.buf, title = "─ CMD Line ─", }
    if vim.bo[state.floating.buf].buftype ~= "cmdline" then
      vim.cmd()
    end
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
end

vim.api.nvim_create_user_command("Floatcmd", toggle_cmd, {})
return {}
