-- Options are automatically loaded before lazy.nvim startup
local opt = vim.opt

-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- python
vim.g.lazyvim_python_lsp = "ruff_lsp"

-- sessionoptions
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
