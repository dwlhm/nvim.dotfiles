vim.g.mapleader = " "

local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- NvimTree
map("n", "<leader>e", "<CMD>:NvimTreeToggle<CR>")
map("n", "<leader>r", "<CMD>NvimTreeFocus<CR>")

-- GIt Blame
map("n", "<leader>g", "<CMD>:Gitsigns blame<CR>")
map("n", "<leader>gb", "<CMD>:Gitsigns toggle_current_line_blame<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- ToggleTerm
map("n", "<leader>j", "<CMD>ToggleTerm size=7 direction=horizontal<CR>")
map("n", "<leader>l", "<CMD>ToggleTerm size=40 direction=vertical<CR>")