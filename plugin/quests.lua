if vim.g.loaded_quests then
  return
end
vim.g.loaded_quests = 1

local quests = require('quests')

vim.api.nvim_create_user_command('Quests', function()
  quests.open()
end, {})

vim.api.nvim_create_user_command('QuestsDaily', function()
  quests.open_daily()
end, {})

vim.api.nvim_create_user_command('QuestsClose', function()
  quests.close()
end, {})

if not vim.g.quests_no_default_keymaps then
  vim.keymap.set('n', '<leader>q', function() quests.open() end, { desc = 'Open Quests' })
  vim.keymap.set('n', '<leader>qd', function() quests.open_daily() end, { desc = 'Open Daily Quests' })
  vim.keymap.set('n', '<leader>qc', function() quests.close() end, { desc = 'Close Quests' })
end