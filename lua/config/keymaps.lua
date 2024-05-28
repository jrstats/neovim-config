-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "<Leader>qw", ":mksession!<CR>:qa<CR>", { desc = "Save the session, then quit." })
vim.api.nvim_set_keymap("n", "Q", "@qj", { desc = "Apply the 'q' macro and move to the next line" })
vim.api.nvim_set_keymap("n", "J", "Vj", { desc = "Select next line in visual block mode" })
vim.api.nvim_set_keymap(
  "n",
  "<Leader>bnp",
  ":e ./playground/",
  { desc = "Create a new buffer with a new file in the playground folder" }
)
vim.api.nvim_set_keymap("n", "<Leader>cL", ":LspStop<CR>:LspStart<CR>", { desc = "Restart the LSP" })
