local M = {}

local window = require('quests.window')
local job_id = nil

function M.start_quests()
  local buf_id = window.get_buf_id()
  if not buf_id then
    return
  end

  if job_id then
    vim.fn.jobstop(job_id)
  end

  job_id = vim.fn.termopen('quests', {
    on_exit = function(_, exit_code)
      if exit_code == 0 then
        window.close()
      end
      job_id = nil
    end
  })

  vim.cmd('startinsert')
end

function M.start_quests_daily()
  local buf_id = window.get_buf_id()
  if not buf_id then
    return
  end

  if job_id then
    vim.fn.jobstop(job_id)
  end

  job_id = vim.fn.termopen('quests --daily', {
    on_exit = function(_, exit_code)
      if exit_code == 0 then
        window.close()
      end
      job_id = nil
    end
  })

  vim.cmd('startinsert')
end

function M.stop()
  if job_id then
    vim.fn.jobstop(job_id)
    job_id = nil
  end
end

return M