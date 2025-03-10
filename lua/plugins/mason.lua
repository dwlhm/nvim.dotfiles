return {
    {
      "williamboman/mason.nvim",
      build = ":MasonUpdate", -- Update registry saat pertama kali install
      config = function()
        require("mason").setup({
          ui = {
            border = "rounded"
          }
        })
      end
    },
    {
      "williamboman/mason-lspconfig.nvim",
      dependencies = { "williamboman/mason.nvim" },
      config = function()
        require("mason-lspconfig").setup({
          ensure_installed = { "lua_ls", "ts_ls", "volar", "eslint" },
          automatic_installation = true,
        })
      end
    },
    {
      "jay-babu/mason-null-ls.nvim",
      dependencies = { "williamboman/mason.nvim", "nvimtools/none-ls.nvim" },
      config = function()
        require("mason-null-ls").setup({
          ensure_installed = { "eslint", "prettier" },
          automatic_installation = true,
        })
      end
    },
    {
      "neovim/nvim-lspconfig",
      dependencies = { "williamboman/mason-lspconfig.nvim" },
      config = function()
        local lspconfig = require("lspconfig")
        local servers = { "lua_ls", "ts_ls", "volar", "eslint" }
        
        for _, server in ipairs(servers) do
          lspconfig[server].setup({})
        end
      end
    }
  }
  