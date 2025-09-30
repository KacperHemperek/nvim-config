local M = {}

-- Default configuration

M.log = {
  debug = function(msg)
    if M.config.debug then
      vim.notify('auto-env: ' .. msg, vim.log.levels.DEBUG)
    end
  end,
  info = function(msg)
    if M.config.debug then
      vim.notify('auto-env: ' .. msg, vim.log.levels.INFO)
    end
  end,
  warn = function(msg)
    if M.config.debug then
      vim.notify('auto-env: ' .. msg, vim.log.levels.WARN)
    end
  end,
  error = function(msg)
    if M.config.debug then
      vim.notify('auto-env: ' .. msg, vim.log.levels.ERROR)
    end
  end,
}

M.config = {
  enabled = true,
  venv_names = { '.venv' },
  debug = false,
}

-- Setup function that users will call
function M.setup(opts)
  -- Merge user config with defaults
  M.config = vim.tbl_deep_extend('force', M.config, opts or {})
  -- Create autocommands if needed

  if opts.enabled then
    M.log.info 'auto-env: enabled'
    vim.api.nvim_create_autocmd('BufEnter', {
      pattern = '*.py',
      callback = function(args)

        -- M.change_venv(args)
      end,
    })
  end
end

-- Core plugin functionality functions
function M.change_venv(args)
  local bufnr = args.buf
  local filename = vim.api.nvim_buf_get_name(bufnr)
  M.log.info('file openned ' .. filename)
end

return M
