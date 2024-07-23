-- return {
--   {
--     "Mofiqul/dracula.nvim",
--     lazy = false,
--     priority = 1000,
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "dracula",
--     },
--   },
-- }
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nightfox",
    },
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      options = {
        transparent = true,
      },
    },
  },
}
