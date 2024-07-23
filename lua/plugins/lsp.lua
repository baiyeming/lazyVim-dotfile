local lsp = require("lspconfig")
-- other config https://github.com/olrtg/emmet-language-server
lsp.emmet_language_server.setup({})
return {
  -- lsp servers
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = true },
    servers = {
      cssls = {
        init_options = { provideFormatter = false },
        settings = {
          css = {
            lint = {
              unknownAtRules = "ignore",
            },
          },
          less = {
            lint = {
              unknownAtRules = "ignore",
            },
          },
          scss = {
            lint = {
              unknownAtRules = "ignore",
            },
          },
        },
      },
      tailwindcss = {},
      prismals = {},
      html = { init_options = { provideFormatter = false } },
      lua_ls = {},
      volar = {
        init_options = {
          vue = {
            hybridMode = true,
          },
        },
        filetypes = {
          "vue",
          "typescript",
          "javascript",
          "javascriptreact",
          "typescriptreact",
          "typescript.tsx",
          "javascript.tsx",
        },
      },
      vtsls = {
        tsserver = {
          globalPlugins = {},
        },
      },
      omnisharp = {
        handlers = {
          ["textDocument/definition"] = function(...)
            return require("omnisharp_extended").handler(...)
          end,
        },
        keys = {
          {
            "gd",
            function()
              require("omnisharp_extended").telescope_lsp_definitions()
            end,
            desc = "Goto Definition",
          },
        },
        enable_roslyn_analyzers = true,
        organize_imports_on_format = true,
        enable_import_completion = true,
      },
    },
    -- 禁止用lspconfi setup rust_analyzer
    setup = {
      rust_analyzer = function()
        return true
      end,
    },
  },
}
