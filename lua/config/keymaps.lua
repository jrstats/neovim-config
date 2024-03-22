-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<Leader>tp", ":vsp term://bash<CR>ivenv<CR>ipython3<CR>", { desc = "Open ipython shell" })
vim.api.nvim_set_var("sendtowindow_use_defaults", 0)
vim.api.nvim_set_keymap("n", "<Leader>pl", "<Plug>SendRight<CR>", {})
vim.api.nvim_set_keymap("x", "<Leader>pl", "<Plug>SendRightV<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>qw", ":mksession!<CR>:qa<CR>", { desc = "Save the session, then quit." })
vim.api.nvim_set_keymap("n", "gR", ":Semshi rename<CR>", { desc = "Rename the current node" })
