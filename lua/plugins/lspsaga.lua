return {
  "nvimdev/lspsaga.nvim",
  event = { "LspAttach" },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    {
      "]d",
      function()
        require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
      end,
      {
        silent = true,
      },
    },
    {
      "[d",
      function()
        require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
      end,
      {
        silent = true,
      },
    },
    {
      "<leader>pd",
      "<cmd>Lspsaga peek_definition<CR>",
      {
        silent = true,
        desc = "peek definition",
      },
    },
    {
      "<leader>ca",
      "<cmd>Lspsaga code_action<CR>",
      {
        silent = true,
        noremap = true,
        desc = "code action",
      },
    },
    {
      "<leader>pt",
      "<cmd>Lspsaga peek_type_definition<CR>",
      {
        silent = true,
        desc = "peek type_definition",
      },

      -- edit = '<C-c>o'
      -- vsplit = '<C-c>v'
      -- split = '<C-c>i'
      -- tabe = '<C-c>t'
      -- quit = 'q'
      -- close = '<C-c>k'
    },
    {
      "<leader>o",
      "<cmd>Lspsaga outline<cr>",
      desc = "symbol outline",
    },
    {
      "<leader>r",
      "<cmd>Lspsaga rename<cr>",
      desc = "Global Rename",
    },
    {
      "K",
      "<cmd>Lspsaga hover_doc<cr>",
      desc = "show Doc",
    },
  },
  opts = {
    ui = {
      border = "rounded",
    },
    lightbulb = {
      enable = false,
    },
    outline = {
      layout = "float",
      keys = {
        jump = "<enter>",
      },
    },
  },
}
