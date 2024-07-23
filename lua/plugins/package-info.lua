return {
  "vuki656/package-info.nvim",
  config = function()
    require("package-info").setup({})
    vim.keymap.set(
      "n",
      "<leader>ns",
      "<cmd> lua require('package-info').show()<cr>",
      { silent = true, noremap = true, desc = "package info" }
    )
    vim.keymap.set(
      "n",
      "<leader>ncc",
      "<cmd> lua require('package-info').hide()<cr>",
      { silent = true, noremap = true, desc = "hide package info" }
    )
  end,
}
