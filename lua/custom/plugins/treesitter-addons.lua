return {
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		deps = {
			"nvim-treesitter/nvim-treesitter",
		},
		setup = function()
			local opts = require("nvim-treesitter").opts
			require("nvim-treesitter.configs").setup({ textobjects = opts.textobjects })
			-- require("nvim-treesitter-textobjects").setup()
		end,
	},
	{
		"michaeljsmith/vim-indent-object",
	},
}
