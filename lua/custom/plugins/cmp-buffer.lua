return {
	"hrsh7th/cmp-buffer",
	setup = function()
		require("cmp").setup({
			sources = {
				{
					name = "buffer",
					option = {
						get_bufnrs = function()
							return vim.api.nvim_list_bufs()
						end,
					},
				},
			},
		})
	end,
}
