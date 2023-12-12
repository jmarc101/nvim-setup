
-- Clear all buffers except current
vim.api.nvim_create_user_command('ClearAllBuffersExceptCurrent', function ()
    local cur_buf = vim.api.nvim_get_current_buf()
    local buf_list = vim.api.nvim_list_bufs()

    for _, buf in ipairs(buf_list) do
      if buf ~= cur_buf then
        vim.api.nvim_buf_delete(buf, { force = true })
      end
    end
  end, { desc = 'Force close all buffers that are not the current buffers' })


