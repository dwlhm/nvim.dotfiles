-- windwp/nvim-autopairs: Autopairs for neovim written by lua.

return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup({
            disable_filetype = { "TelescopePrompt", "vim" },
        })
    end,
}