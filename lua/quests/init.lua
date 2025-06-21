local M = {}

local window = require('quests.window')
local terminal = require('quests.terminal')

function M.open()
  if window.is_open() then
    window.focus()
    return
  end
  
  window.create()
  terminal.start_quests()
end

function M.open_daily()
  if window.is_open() then
    window.focus()
    return
  end
  
  window.create()
  terminal.start_quests_daily()
end

function M.close()
  if window.is_open() then
    window.close()
  end
end

return M