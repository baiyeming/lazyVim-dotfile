-- add buffer mark
return {
  {
    "ThePrimeagen/harpoon",
    lazy = true,
    keys = {
      {
        "<leader>ho",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,

        desc = "Toggle harpoon Menu"
      },
      {
        "<leader>ha",
        function()
          require("harpoon.mark").add_file()
        end,
        desc = "Add harpoon File"
      },
      {
        "<leader>hr",
        function()
          require("harpoon.mark").rm_file()
        end,
        desc = "Remove Current Mark"
      },
      {
        "<leader>hc",
        function()
          require("harpoon.mark").clear_all()
        end,
        desc = "Clean All Mark"
      },
      -- {
      --   "<leader>hn",
      --   function()
      --     require("harpoon.ui").nav_next()
      --   end,
      --   desc = "Navigates Next Mark"
      -- },
      -- {
      --   "<leader>hp",
      --   function()
      --     require("harpoon.ui").nav_prev()
      --   end,
      --   desc = "Navigates Prev Mark",
      -- },
    }
  },
}
