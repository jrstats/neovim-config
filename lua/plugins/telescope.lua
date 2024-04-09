return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- add a keymap to browse plugin files
    {
      "<leader>fd",
      function()
        require("telescope.builtin").find_files({
          prompt_title = "Search for dotenv files",
          cwd = vim.fn.getcwd(),
          find_command = { "rg", "--files", "--glob", ".env*" },
          file_ignore_patterns = {},
          no_ignore = true,
        })
      end,
      desc = "Search for dotenv files",
    },
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({
          prompt_title = "Search for playground files",
          cwd = string.format("%s/playground", vim.fn.getcwd()),
          file_ignore_patterns = {},
          no_ignore = true,
        })
      end,
      desc = "Search for playground files",
    },
  },
}
