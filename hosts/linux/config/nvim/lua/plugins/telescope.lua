-- Telescope fuzzy finding (all the things)
return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim"
		},
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})
			vim.keymap.set("n", "<leader><space>", builtin.buffers, {})
			vim.keymap.set("n", "<leader>/", function()
				-- You can pass additional configuration to telescope to change theme, layout, etc.
			require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, {})

			vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, {})
			vim.keymap.set("n", "<leader>sw", builtin.grep_string, {})
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>sd", builtin.diagnostics, {})
			vim.keymap.set("n", "<C-p>", builtin.keymaps, {})
		end,
	},
}