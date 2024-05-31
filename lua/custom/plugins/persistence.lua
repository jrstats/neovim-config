return {
	"folke/persistence.nvim",
	event = "VimEnter",
	config = function()
		require("persistence").setup({
			dir = vim.fn.expand(vim.fn.stdpath("data") .. "/sessions/"),
			options = { "buffers", "curdir", "tabpages", "winsize" },
		})
	end,
	keys = {
		{
			"<leader>qs",
			[[<cmd>lua require("persistence").load()<cr>]],
			desc = "Restore the session for the current directory",
		},
		{
			"<leader>ql",
			[[<cmd>lua require("persistence").load({ last = true })<cr>]],
			desc = "Restore the last session",
		},
		{
			"<leader>qd",
			[[<cmd>lua require("persistence").stop()<cr>]],
			desc = "Stop Persistence => session won't be saved on exit",
		},
	},
	init = function()
		require("persistence").load()
	end,
}
