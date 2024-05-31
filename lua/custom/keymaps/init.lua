return {
	vim.api.nvim_set_keymap("n", "<Leader>qw", ":mksession!<CR>:qa<CR>", { desc = "Save the session, then quit." }),
	vim.api.nvim_set_keymap("n", "Q", "@qj", { desc = "Apply the 'q' macro and move to the next line" }),
	vim.api.nvim_set_keymap("n", "J", "Vj", { desc = "Select next line in visual block mode" }),
	vim.api.nvim_set_keymap(
		"n",
		"<Leader>bnp",
		":e ./playground/",
		{ desc = "Create a new buffer with a new file in the playground folder" }
	),
	vim.api.nvim_set_keymap(
		"n",
		"<Leader>d%",
		":call delete(@%)<CR>:bp<bar>bd#<CR>",
		{ desc = "Delete the file of the current buffer" }
	),
	vim.api.nvim_set_keymap("n", "<Leader>cL", ":LspStop<CR>:LspStart<CR>", { desc = "Restart the [L]SP" }),
}
