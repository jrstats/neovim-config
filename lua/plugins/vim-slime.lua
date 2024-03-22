return {
  {
    "jpalardy/vim-slime",
    keys = {
      { "<C-C>c", "<Plug>SlimeSendCell<BAR>/^# %%<CR>", desc = "Slime Send Cell" },
      { "<C-C><C-C>", "<Plug>SlimeParagraphSend<CR>", desc = "Slime Send Paragraph" },
    },
    config = function()
      vim.g.slime_cell_delimiter = "# %%"
      vim.g.slime_target = "tmux"
      vim.g.slime_bracketed_paste = 1 -- If using IPython
      vim.g.slime_default_config = {
        socket_name = "default",
        target_pane = "{right-of}", -- Adjust based on your tmux layout
      }
      vim.g.slime_dont_ask_default = 1 -- Don't ask for config every time
    end,
  },
}
