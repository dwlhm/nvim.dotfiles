return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")
    
    -- LSP servers yang dikonfigurasi otomatis oleh Mason
    local servers = {
      "cssls",
      "emmet_ls",
      "html",
      "tailwindcss",
      "volar",
      "ts_ls",
    }

    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup({
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
        on_attach = function(client, bufnr)
          -- konfigurasi tambahan or keymap tambahan tambahkan disini
        end,
      })
    end

    -- konfigurasi Biome
    lspconfig.jsonls.setup({
      -- Biome akan mengambil alih linting dan formatting untuk JSON
    })
  end,
}
