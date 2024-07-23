-- file tag
return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  keys = {
    { "<Tab>",   "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
    { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
  },
  opts = {
    options = {
      mode = "buffers",
      -- 与文件树分开
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explore",
          highlight = "Directory",
          text_align = "left",
          separator = true,
        },
      },
      -- 当hover时显示关闭按钮
      hover = {
        enabled = true,
        delay = 200,
        reveal = { "close" },
      },
      -- 选项卡样式 透明搞不了
      -- separator_style = "padded_slant",
    }
  }
}
