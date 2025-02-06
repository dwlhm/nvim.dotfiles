-- nvim-neo-tree/neo-tree: Neovim plugin to manage the file system and other tree like structures.

return {
	"nvim-tree/nvim-tree.lua",
	branch = "v3.x",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			git = {
				timeout = 2000, -- Increase git timeout to 2000ms (2 seconds)
				enable = true,
			},
		})
	end,
}

