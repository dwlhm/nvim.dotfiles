return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        require("nvim-treesitter.configs").setup({
          ensure_installed = { "lua", "javascript", "typescript", "html", "css" }, -- Sesuaikan dengan kebutuhan
          sync_install = false,
          auto_install = true,
          highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
          },
          indent = { enable = true },
          rainbow = {
            enable = true, -- Untuk pewarnaan parentheses
            extended_mode = true, -- Juga untuk tanda kurung siku dan kurawal
            max_file_lines = 1000,
          },
        })
    end,
}
  