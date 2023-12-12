
vim.api.nvim_create_user_command('ClearAllBuffersExceptCurrent', function ()
    local cur_buf = vim.api.nvim_get_current_buf()
    local buf_list = vim.api.nvim_list_bufs()

    for _, buf in ipairs(buf_list) do
      if buf ~= cur_buf then
        vim.api.nvim_buf_delete(buf, { force = true })
      end
    end
  end, { desc = 'Force close all buffers that are not the current buffers' })


vim.api.nvim_create_user_command('ClearBuffersNotInWindow', function ()
  local buffers_in_window = vim.fn.win_findbuf(1)
  local buf_list = vim.api.nvim_list_bufs()

  print(vim.inspect(buffers_in_window))
  
  for _, buf in ipairs(buf_list) do
    if not vim.tbl_contains(buffers_in_window, buf) then
      vim.api.nvim_buf_delete(buf, { force = true })
    end
  end
  end, { desc = 'Force close all buffers that are not currently displayed in windows' })




