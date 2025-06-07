local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
    },
    -- Removed format_on_save to improve startup time
    -- You can still format manually with <leader>mp
})

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
    conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
    })
end, { desc = "Format file or range (in visual mode)" })

-- Optional: Add auto-format on save for specific filetypes only
-- Uncomment and modify as needed:
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = { "*.lua", "*.js", "*.ts" },
--   callback = function()
--     conform.format({ lsp_fallback = true })
--   end,
-- })

