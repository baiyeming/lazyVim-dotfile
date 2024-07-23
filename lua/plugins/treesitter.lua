-- 代码高亮
return {
  {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.10.0",
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "css",
        "gitignore",
        -- "graphql",
        -- "http",
        "json",
        "scss",
        -- "sql",
        -- "vim",
        -- "lua",
        -- "prisma",
        "vue",
        -- "rust",
        "toml",
        "c_sharp",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>",
          node_incremental = "<CR>",
          scope_incremental = "<TAB>",
          node_decremental = "<BS>",
        },
      },
      indent = {
        -- 启用代码缩进模块 =
        enable = true,
      },
      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      },
    },
  },
}
