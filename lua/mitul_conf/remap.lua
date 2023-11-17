vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<F8>", vim.cmd.TagbarToggle)
vim.keymap.set("n", "<leader>db", vim.cmd.DBUI)
vim.keymap.set("n", "<C-j>", "<cmd>ToggleTerm size=10<cr>")
vim.keymap.set('t', '<C-j>', vim.cmd.ToggleTerm)
vim.keymap.set("n", "<C-t>", vim.cmd.NvimTreeOpen)
vim.keymap.set("n", "<leader>t", vim.cmd.NvimTreeClose)
vim.g.user_emmet_leader_key = '<leader>'

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-s>", vim.cmd.w)
-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

