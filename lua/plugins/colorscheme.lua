return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require('catppuccin').setup({
      flavour = "macchiato",
      transparent_background = true,
      integrations = {
        treesitter = true,
      },
    })

    vim.cmd.colorscheme "catppuccin"
    -- Warna untuk nomor baris standar: Abu-abu yang lebih terlihat tapi lembut.
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#9399b2" })
  end,
}
