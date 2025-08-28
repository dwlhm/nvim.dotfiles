return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    -- fill any relevant options here
  },
  config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        window = {
	        width = 26,
	      },
        filesystem = {
          filtered_items = {
            visible = true, -- Show hidden files
            hide_dotfiles = false, -- Do not hide dotfiles
            hide_gitignored = true, -- Hide files ignored by Git
          },
        },
      })
      vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle Neo-tree Explorer" })
    end
}
