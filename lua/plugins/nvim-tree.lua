vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {
      "<leader>e",
      "<cmd>NvimTreeToggle<CR>",
      desc = "toggle NvimTree",
    },
  },
  opts = {
    sync_root_with_cwd = true,
    -- 显示隐藏文件
    filters = {
      git_ignored = false,
    },
    -- 自动展开当前文件的文件夹
    update_focused_file = {
      enable = true,
      debounce_delay = 15,
      update_root = true,
      ignore_list = {},
    },
  },
}
