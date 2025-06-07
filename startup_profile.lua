-- Startup profiling script
-- Add this to your init.lua temporarily to measure startup time
-- Remove after testing

local start_time = vim.loop.hrtime()

-- Hook into VimEnter to measure total startup time
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local end_time = vim.loop.hrtime()
    local startup_time = (end_time - start_time) / 1000000 -- Convert to milliseconds
    print(string.format("Neovim startup time: %.2f ms", startup_time))
  end,
})

-- Optional: Profile individual plugins
-- vim.cmd([[
--   profile start /tmp/nvim-profile.log
--   profile func *
--   profile file *
-- ]])