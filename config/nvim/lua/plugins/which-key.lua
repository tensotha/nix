return {
	{
		"folke/which-key.nvim",
		config = function()
			local wk = require("which-key")
			wk.setup()
			wk.register(
				{
					["<leader>"] = {
						f = { name = "File" },
						d = { name = "Delete/Close" },
                        sg = { name = "live grep (search file contents)"}
                        sf = { name = "search file names" }
						q = { name = "Quit" },
						s = { name = "Search" },
						l = { name = "LSP" },
						u = { name = "UI" },
						b = { name = "Debugging" },
						g = { name = "Git" },
					}
				}
			)
		end
	}
}