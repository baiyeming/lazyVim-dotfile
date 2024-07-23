return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    -- 保存时自动格式化的文件
    formatters_by_ft = {
      lua = { "stylua" },
      cs = { "csharpier" },
      -- Conform will run multiple formatters sequentially
      -- python = { "isort", "black" },
      -- Use a sub-list to run only the first available formatter
      -- javascript = { "prettierd", "prettier" },
    },
    formatters = {
      csharpier = {
        command = "dotnet-csharpier",
        args = { "--write-stdout" },
      },
    },
  },
}
