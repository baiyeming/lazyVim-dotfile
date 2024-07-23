return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    -- {"<leader>/", false},
    -- change a keymap
    -- { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    -- add a keymap to browse plugin files
    {
      "<C-p>",
      "<cmd>Telescope find_files<cr>",
      desc = "Find File",
    },
    -- ban previous keymap
    {
      "<leader>ss",
      false,
    },
    -- fitten code
    {

      "<leader>fc",
      false,
    },
  },
}
