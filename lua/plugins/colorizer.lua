-- norcalli/nvim-colorizer.lua: Color highlighter.

return {
    "norcalli/nvim-colorizer.lua",
    config = function()
        require("colorizer").setup({ "*" })
    end,
}