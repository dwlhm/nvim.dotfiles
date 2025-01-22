-- tiagovla/tokyodark.nvim: A clean dark theme written in lua for neovim.

return {
    "tiagovla/tokyodark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd("colorscheme tokyodark")
    end,
}