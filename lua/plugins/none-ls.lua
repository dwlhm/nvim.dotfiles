return {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = function(_, opts)
    local nls = require("null-ls")
    local b = nls.builtins

    -- custom diagnostic untuk biome
    local biome_diagnostics = {
      name = "biome_diagnostics",
      method = nls.methods.DIAGNOSTICS,
      filetypes = { "javascript", "typescript", "json" },
      generator = nls.generator({
        command = "biome",
        args = { "check", "--reporter=json", "$FILENAME" },
        to_stdin = false,
        from_stderr = false,
        format = "json",
        check_exit_code = function(code)
          return code <= 1
        end,
        on_output = function(params)
          local diags = {}
          if not params.output or not params.output.diagnostics then
            return diags
          end

          for _, d in ipairs(params.output.diagnostics) do
            table.insert(diags, {
              row = d.location.start.line,
              col = d.location.start.column,
              end_row = d.location["end"].line,
              end_col = d.location["end"].column,
              source = "biome",
              message = d.message,
              severity = vim.diagnostic.severity.WARN,
            })
          end

          return diags
        end,
      }),
    }

    opts.sources = vim.list_extend(opts.sources or {}, {
      b.formatting.biome, -- ✅ formatter
      biome_diagnostics,  -- ✅ linting
    })
  end,
}
