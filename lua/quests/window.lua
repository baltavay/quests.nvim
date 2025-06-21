local M = {}

local win_id = nil
local buf_id = nil

function M.create()
  if M.is_open() then
    return
  end

  buf_id = vim.api.nvim_create_buf(false, true)
  
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local opts = {
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'rounded',
    title = ' Quests ',
    title_pos = 'center'
  }

  win_id = vim.api.nvim_open_win(buf_id, true, opts)
  
  vim.api.nvim_buf_set_option(buf_id, 'bufhidden', 'wipe')
  vim.api.nvim_buf_set_option(buf_id, 'filetype', 'quests')
  
  vim.api.nvim_buf_set_keymap(buf_id, 'n', 'q', '<cmd>QuestsClose<CR>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(buf_id, 'n', '<Esc>', '<cmd>QuestsClose<CR>', { noremap = true, silent = true })
  
  vim.api.nvim_create_autocmd('WinClosed', {
    pattern = tostring(win_id),
    callback = function()
      M.close()
    end,
    once = true
  })
end

function M.close()
  if win_id and vim.api.nvim_win_is_valid(win_id) then
    vim.api.nvim_win_close(win_id, true)
  end
  if buf_id and vim.api.nvim_buf_is_valid(buf_id) then
    vim.api.nvim_buf_delete(buf_id, { force = true })
  end
  win_id = nil
  buf_id = nil
end

function M.focus()
  if win_id and vim.api.nvim_win_is_valid(win_id) then
    vim.api.nvim_set_current_win(win_id)
  end
end

function M.is_open()
  return win_id and vim.api.nvim_win_is_valid(win_id)
end

function M.get_buf_id()
  return buf_id
end

return M