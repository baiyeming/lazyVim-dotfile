return {
  {

    "williamboman/mason.nvim",
    opts = {
      -- 提前安装
      ensure_installed = {
        "stylua",
        "luacheck",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "vue-language-server",
        "css-lsp",
        -- "rust-analyzer",
        "codelldb",
        "csharpier",
        "netcoredbg",
      },
    },
  },
}
