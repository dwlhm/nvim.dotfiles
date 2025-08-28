return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  consfig = function()
    -- impost mason
    local mason = require("mason")

    -- impost mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- enable mason and configure servers
    mason.setup()

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "html",
        "cssls",
        "tailwindcss",
        "emmet_ls",
        "ts_ls",
        "volar",
        "eslint",
      },

      -- autoinstall servers when not found
      automatic_installation = true,
    })
  end,
}
